// Outlined button
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        icon: const Icon(Icons.add),
        onPressed: () => print,
        style: OutlinedButton.styleFrom(
            disabledBackgroundColor: Colors.grey,
            disabledForegroundColor: Colors.white.withOpacity(0.5),
            side: const BorderSide(width: 2, color: Colors.yellow),
            elevation: 20,
            shadowColor: Colors.blue.withOpacity(0.5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: const Size(300, 80),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.black,
            foregroundColor: Colors.yellowAccent),
        label: const Text(
          'Outlined button',
          style: TextStyle(fontSize: 28),
        ));
  }
}
