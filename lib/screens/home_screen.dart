import 'package:flutter/material.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavigationBar(),
      ),
      drawer: Text("drawer"),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CARD",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "LIST",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "card",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
