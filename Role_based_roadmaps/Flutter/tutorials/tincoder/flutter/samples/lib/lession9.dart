// Elevated button
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.add,
        size: 30,
      ),
      onPressed: () => print,
      style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white.withOpacity(0.8),
          side: const BorderSide(width: 1, color: Colors.yellow),
          elevation: 20,
          shadowColor: Colors.black.withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          minimumSize: const Size(240, 80)),
      label: const Text(
        'Elevated button',
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
