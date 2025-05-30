import 'package:flutter/material.dart';
import 'widgets/num_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _input = '';
  String _result = '';
  String _operator = '';
  double? _firstOperand;

  void _onButtonPress(String value) {
    setState(() {
      if (value == '+' || value == '-' || value == '*' || value == '/') {
        _firstOperand = double.tryParse(_input);
        _operator = value;
        _input = ''; // clear input for second operand
      } else if (value == '=') {
        double? secondOperand = double.tryParse(_input);
        if (_firstOperand != null && secondOperand != null) {
          switch (_operator) {
            case '+':
              _result = (_firstOperand! + secondOperand).toString();
              break;
            case '-':
              _result = (_firstOperand! - secondOperand).toString();
              break;
            case '*':
              _result = (_firstOperand! * secondOperand).toString();
              break;
            case '/':
              _result = secondOperand != 0
                  ? (_firstOperand! / secondOperand).toString()
                  : 'Error';
              break;
          }
        }
      } else if (value == 'C') {
        _input = '';
        _result = '';
        _firstOperand = null;
        _operator = '';
      } else {
        _input += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      '7', '8', '9', '/',
      '4', '5', '6', '*',
      '1', '2', '3', '-',
      'C', '0', '=', '+',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.grey[200],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _input,
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _result,
                    style: TextStyle(color: Colors.green, fontSize: 28),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(16.0),
              children: buttons.map((value) => NumButton(
                text: value,
                onPressed: () => _onButtonPress(value),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
