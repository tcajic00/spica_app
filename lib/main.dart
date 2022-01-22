import 'package:flutter/material.dart';
import 'package:spica_app/data/card_data.dart';
import 'package:spica_app/screens/card_screen/card_screen.dart';
import 'package:spica_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  CardData currentCard = CardData('', '', '', '', '', 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.white,
      )),
      routes: {
        '/': (context) => HomeScreen(
              selectCard: (CardData data) {
                setState(() {
                  currentCard = data;
                });

                Navigator.of(context).pushNamed('/card${currentCard.cardId}');
              },
            ),
        '/analytics': (context) => const Text("analytics page"),
        '/card1': (context) => CardScreen(
              data: defaultData[0],
            ),
        '/card2': (context) => CardScreen(
              data: defaultData[1],
            ),
        '/card3': (context) => CardScreen(
              data: defaultData[2],
            ),
      },
      initialRoute: '/',
    );
  }
}
