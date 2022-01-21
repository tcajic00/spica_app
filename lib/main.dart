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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardScreen(
                              data: currentCard,
                            )));
              },
            ),
      },
      initialRoute: '/',
    );
  }
}
