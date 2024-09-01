// Row
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text(
            'Button 1',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text(
            'Button 2',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
          child: const Text(
            'Button 3',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
