// SizedBox
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, // double.infinity: full width,
      height: 50, // double.infinity: full height = SizedBox.expand()
      child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text(
            'Click me',
            style: TextStyle(fontSize: 30),
          )),
    );
  }
}
