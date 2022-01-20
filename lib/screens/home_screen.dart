import 'package:flutter/material.dart';
import 'package:spica_app/shared/card_template.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const CardTemplate(
            company: "COMPANY",
            name: "NAME1",
          ),
          const CardTemplate(
            company: "COMPANY",
            name: "NAME2",
          ),
          const CardTemplate(
            company: "COMPANY",
            name: "NAME3",
          ),
        ],
      ),
    );
  }
}
