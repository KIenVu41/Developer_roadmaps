// RichText

import 'dart:js';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(style: DefaultTextStyle.of(context).style, children: const [
          TextSpan(text: 'Hello'),
          TextSpan(text: 'bold', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          TextSpan(text: 'World')
        ]),
      ),
    );
  }
}
