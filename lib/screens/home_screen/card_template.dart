import 'package:flutter/material.dart';

class CardTemplate extends StatefulWidget {
  final String company;
  final String name;
  final String username;
  final String cardNumber;
  final String validUntil;
  const CardTemplate({
    Key? key,
    required this.company,
    required this.name,
    required this.username,
    required this.cardNumber,
    required this.validUntil,
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
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.pink[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "SPICACARD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                            Icon(
                              Icons.nfc_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Text(
                                widget.username,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 30,
                          ),
                          child: Text(
                            widget.cardNumber,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              "VALID UNTIL",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.validUntil,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              widget.company + widget.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
