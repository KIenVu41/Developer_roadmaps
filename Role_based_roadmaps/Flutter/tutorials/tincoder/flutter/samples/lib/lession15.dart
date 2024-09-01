// Expanded
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.green,
            height: 150,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 150,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
            height: 150,
          ),
        ),
      ],
    );
  }
}
