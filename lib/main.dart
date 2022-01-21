import 'package:flutter/material.dart';
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
  int? currentCardId;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.white,
      )),
      routes: {
        '/': (context) => HomeScreen(
              selectCard: (int id) {
                setState(() {
                  currentCardId = id;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CardScreen(cardId: currentCardId!)));
              },
            ),
      },
      initialRoute: '/',
    );
  }
}
