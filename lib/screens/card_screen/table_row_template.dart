// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spica_app/data/table_row_data.dart';

class TableRowTemplate extends StatefulWidget {
  TableRowData data;
  TableRowTemplate({Key? key, required this.data}) : super(key: key);

  @override
  State<TableRowTemplate> createState() => _TableRowTemplateState();
}

class _TableRowTemplateState extends State<TableRowTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
        color: Colors.grey[200],
      ),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                widget.data.date,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                widget.data.time,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                widget.data.action,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
