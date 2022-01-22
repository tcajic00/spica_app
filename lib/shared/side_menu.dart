import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.pink[100]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.language,
                  size: 50,
                  color: Colors.red[700],
                ),
              ),
              Text(
                "SPIC",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30,
                ),
              ),
              Text(
                "A",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "PP",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.credit_card,
            size: 30,
          ),
          title: Text(
            "CARD LIST",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.analytics,
            size: 30,
          ),
          title: Text(
            "ANALYTICS",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/analytics');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.exit_to_app,
            size: 30,
          ),
          title: Text(
            "EXIT",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
            ),
          ),
          onTap: () {
            SystemNavigator.pop();
          },
        ),
      ]),
    );
  }
}
