import 'package:flutter/material.dart';
import 'widgets/build_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController inputControl = TextEditingController();

    return Scaffold(
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

          SizedBox(
            child: NumButton(
              text: '1',
              textColor: Colors.red,
              backGroundColor: Colors.black12,
              borderColor: Colors.green,
            ),
          ),

        ],
      ),
    );
  }
}
