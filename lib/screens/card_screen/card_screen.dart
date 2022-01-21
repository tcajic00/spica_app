import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  final int cardId;
  const CardScreen({ Key? key, required this.cardId }) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Card "+widget.cardId.toString());
  }
}