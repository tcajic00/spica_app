// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:spica_app/screens/home_screen/card_template.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';

class HomeScreen extends StatefulWidget {
  final Function(int)? selectCard;
  const HomeScreen({
    Key? key,
    this.selectCard,
  }) : super(key: key);

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
          CardTemplate(
            company: "COMPANY",
            name: "NAME1",
            username: "Ivo Ivic",
            cardNumber: "1234 5678 9123 4 5",
            validUntil: "12/2022",
            cardId: 1,
            setCard: (int id) {
              widget.selectCard!(id);
            },
          ),
          CardTemplate(
            company: "COMPANY",
            name: "NAME2",
            username: "Ivo Ivic",
            cardNumber: "6548 7364 8573 8 8",
            validUntil: "10/2022",
            cardId: 2,
            setCard: (int id) {
              widget.selectCard!(id);
            },
          ),
          CardTemplate(
            company: "COMPANY",
            name: "NAME3",
            username: "Ivo Ivic",
            cardNumber: "6483 6549 6385 9 7",
            validUntil: "11/2022",
            cardId: 3,
            setCard: (int id) {
              widget.selectCard!(id);
            },
          ),
        ],
      ),
    );
  }
}
