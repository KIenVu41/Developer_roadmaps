// Flexible
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          fit: FlexFit.tight, // Expanded
          child: Container(
            color: Colors.green,
            height: 100,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 150,
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
