import 'package:flutter/material.dart';
import 'widgets/num_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController inputControl = TextEditingController();

    final List<String> buttons = [
      '7',
      '8',
      '9',
      '/',
      '4',
      '5',
      '6',
      '*',
      '1',
      '2',
      '3',
      '-',
      '0',
      '.',
      '=',
      '+',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.grey[200],
      ),

      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white, fontSize: 35),

                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ),

          SizedBox(height: 20),

          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(16.0),
              children: buttons.map((value) => NumButton(text: value)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
