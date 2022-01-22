import 'package:flutter/material.dart';
import 'package:spica_app/data/card_data.dart';
import 'package:spica_app/data/table_row_data.dart';
import 'package:spica_app/screens/card_screen/table_row_template.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';
import 'package:spica_app/shared/side_menu.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CardScreen extends StatefulWidget {
  final CardData data;
  const CardScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final List<TableRowData> activityData1 = [
    TableRowData(
      "12.12.2021.",
      "15:35",
      "Left work",
    ),
    TableRowData(
      "12.12.2021.",
      "12:15",
      "Came from a break",
    ),
    TableRowData(
      "12.12.2021.",
      "11:30",
      "Went on a break",
    ),
    TableRowData(
      "12.12.2021.",
      "7:35",
      "Came to work",
    ),
  ];

  final List<TableRowData> activityData2 = [
    TableRowData(
      "13.12.2021.",
      "16:35",
      "Left work",
    ),
    TableRowData(
      "13.12.2021.",
      "13:15",
      "Came from a break",
    ),
    TableRowData(
      "13.12.2021.",
      "12:30",
      "Went on a break",
    ),
    TableRowData(
      "13.12.2021.",
      "8:35",
      "Came to work",
    ),
  ];

  final List<TableRowData> activityData3 = [
    TableRowData(
      "14.12.2021.",
      "16:35",
      "Left work",
    ),
    TableRowData(
      "14.12.2021.",
      "13:15",
      "Came from a break",
    ),
    TableRowData(
      "14.12.2021.",
      "12:30",
      "Went on a break",
    ),
    TableRowData(
      "14.12.2021.",
      "8:35",
      "Came to work",
    ),
  ];
  bool datePicker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavigationBar(),
      ),
      drawer: SideMenu(),
      body: Column(
        children: [
          Visibility(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 450,
                height: 350,
                child: SfDateRangePicker(
                  maxDate: DateTime.now(),
                  minDate: DateTime(1997),
                  backgroundColor: Colors.grey[300],
                  onCancel: datePickerSwitch,
                  showActionButtons: true,
                  confirmText: "",
                  selectionColor: Colors.pink[200],
                  todayHighlightColor: Colors.pink[300],
                  headerHeight: 50,
                  showTodayButton: true,
                ),
              ),
            ),
            visible: datePicker,
          ),
          Visibility(
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 200.0,
                ),
                child: Center(
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.pink[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "SPICACARD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ),
                              ),
                              Icon(
                                Icons.nfc_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Text(
                                  widget.data.username,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 30,
                            ),
                            child: Text(
                              widget.data.cardNumber,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                "VALID UNTIL",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.data.validUntil,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                widget.data.company + widget.data.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            visible: !datePicker,
            maintainState: true,
            maintainAnimation: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SPICA ",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 30,
                  )),
              Text("DAILY",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              Text(" REPORT",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 30,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TableRowTemplate(
                  data: TableRowData("DATE", "TIME", "ACTION"),
                ),
                Column(
                  children: _tableRowList(widget.data.cardId),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !datePicker,
            child: SizedBox(
              height: 50,
              width: 230,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[600],
                ),
                onPressed: datePickerSwitch,
                child: const Text(
                  "View monthly report",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[600],
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void datePickerSwitch() {
    setState(() {
      datePicker ? datePicker = false : datePicker = true;
    });
  }

  List<Widget> _tableRowList(cardId) {
    if (cardId == 1) {
      return activityData1
          .map(
            (data) => TableRowTemplate(
              data: data,
            ),
          )
          .toList();
    } else if (cardId == 2) {
      return activityData2
          .map(
            (data) => TableRowTemplate(
              data: data,
            ),
          )
          .toList();
    } else if (cardId == 3) {
      return activityData3
          .map(
            (data) => TableRowTemplate(
              data: data,
            ),
          )
          .toList();
    } else {
      return [
        Text("No data!"),
      ];
    }
  }
}
