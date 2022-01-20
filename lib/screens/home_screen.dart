import 'package:flutter/material.dart';
import 'package:spica_app/shared/navigation_bar_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavigationBar(),
      ),
      drawer: Text("drawer"),
      body: Text("home"),
    );
  }
}
