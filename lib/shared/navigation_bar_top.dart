import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey[800],
        size: 35,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'SPIC',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 35,
            ),
          ),
          Text(
            'A',
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w900,
              fontSize: 35,
            ),
          ),
          Text(
            'PP',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 35,
            ),
          ),
        ],
      ),
      toolbarHeight: 80,
    );
  }
}
