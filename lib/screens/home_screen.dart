import 'package:flutter/material.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavigationBar(),
      ),
      drawer: const Text("drawer"),
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
              onPressed: cardVisibilitySwitch,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "COMPANY",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "NAME 1",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    isOpen ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            child: Text("card1"),
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: isOpen,
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "COMPANY",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "NAME 2",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void cardVisibilitySwitch() {
    setState(() {
      isOpen ? isOpen = false : isOpen = true;
    });
  }
}
