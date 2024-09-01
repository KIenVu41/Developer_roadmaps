// TextButton

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20), // đặt margin trong parent widget
      child: TextButton.icon(
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            if (kDebugMode) {
              print('Click');
            }
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.pink,
              backgroundColor: Colors.green,
              minimumSize: const Size(120, 60),
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              elevation: 8,
              shadowColor: Colors.grey.withOpacity(0.3),
              side: const BorderSide(width: 1.0, color: Colors.black26),
              disabledBackgroundColor: Colors.grey,
              disabledForegroundColor: Colors.white),
          label: const Text(
            'Text Button',
            style: TextStyle(fontSize: 28),
          )),
    );
  }
}
