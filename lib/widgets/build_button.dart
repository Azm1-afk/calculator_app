import 'package:flutter/cupertino.dart';

class NumButton extends StatelessWidget {
  final Color textColor;
  final Color backGroundColor;
  final Color borderColor;
  final String text;

  const NumButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backGroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: backGroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
