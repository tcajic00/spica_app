import 'package:flutter/material.dart';

class CardTemplate extends StatefulWidget {
  final String company;
  final String name;
  const CardTemplate({
    Key? key,
    required this.company,
    required this.name,
  }) : super(key: key);

  @override
  _CardTemplateState createState() => _CardTemplateState();
}

class _CardTemplateState extends State<CardTemplate> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 80,
          child: ElevatedButton(
            onPressed: cardVisibilitySwitch,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.company,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(
                  isOpen ? Icons.expand_less : Icons.expand_more,
                  color: Colors.grey[600],
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        Visibility(
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 200.0,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.pink[300],
                  ),
                ),
              ),
            ),
          ),
          maintainAnimation: true,
          maintainState: true,
          visible: isOpen,
        ),
      ],
    );
  }

  void cardVisibilitySwitch() {
    setState(() {
      isOpen ? isOpen = false : isOpen = true;
    });
  }
}
