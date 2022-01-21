import 'package:flutter/material.dart';
import 'package:spica_app/data/card_data.dart';
import 'package:spica_app/screens/card_screen/card_screen.dart';
import 'package:spica_app/screens/home_screen/home_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  CardData currentCard = CardData("", "", "", "", "", 0);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
          child: Text("SPICAPP"),
        ),
        ListTile(
          title: const Text("HOME"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
      ]),
    );
  }
}
