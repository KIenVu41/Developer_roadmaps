// Widget: Text, TextStyle
import 'dart:js';

import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello world',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textScaler: TextScaler.linear(1.5),
      style: TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          fontFamily: 'Times New Roman',
          wordSpacing: 20,
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          shadows: [Shadow()]),
    );
  }
}
