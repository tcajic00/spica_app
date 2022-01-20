import 'package:flutter/material.dart';
import 'package:spica_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.white,
      )),
      routes: {
        '/': (context) => HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
