import 'package:flutter/material.dart';
import 'package:spica_app/data/card_data.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';
import 'package:spica_app/shared/side_menu.dart';

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
          SizedBox(
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
        ],
      ),
    );
  }
}
