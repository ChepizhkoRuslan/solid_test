import 'dart:math';
import 'package:flutter/material.dart';

class ColorsPage extends StatefulWidget {
  @override
  _ColorsPageState createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  Color color;
  @override
  void initState() {
    color = getRandomColor();
    super.initState();
  }

  Color getRandomColor() =>
      Colors.accents[Random().nextInt(Colors.accents.length)];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => color = getRandomColor()),
      child: Container(
        color: color,
        child: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
