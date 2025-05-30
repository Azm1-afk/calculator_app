import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NumButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);



  @override   // THE BELOW CODE IS THE STRUCTURAL/PHYSICAL ELEMENTS
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
              color: Colors.blueGrey,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
