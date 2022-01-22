// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:spica_app/data/card_data.dart';
import 'package:spica_app/screens/home_screen/card_template.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';
import 'package:spica_app/shared/side_menu.dart';

class HomeScreen extends StatefulWidget {
  final Function(CardData)? selectCard;

  const HomeScreen({
    Key? key,
    this.selectCard,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CardData> defaultData = [
    CardData(
      "COMPANY",
      "NAME1",
      "Ivo Ivic",
      "1234 5678 9123 4 5",
      "12/2022",
      1,
    ),
    CardData(
      "COMPANY",
      "NAME2",
      "Ivo Ivic",
      "6548 7364 8573 8 8",
      "10/2022",
      2,
    ),
    CardData(
      "COMPANY",
      "NAME3",
      "Ivo Ivic",
      "6483 6549 6385 9 7",
      "11/2022",
      3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavigationBar(),
        
      ),
      drawer: const SideMenu(),
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
          Column(
            children: _cardList(),
          ),
        ],
      ),
    );
  }

  List<Widget> _cardList() {
    return defaultData
        .map((data) => CardTemplate(
              data: data,
              setCard: widget.selectCard,
            ))
        .toList();
  }
}
