import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String text;

  const NumButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 80,
      height: 80,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
