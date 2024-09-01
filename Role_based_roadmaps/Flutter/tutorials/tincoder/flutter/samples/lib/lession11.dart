// Container
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.2),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.green,
          shape: BoxShape.rectangle),
      child: const Text(
        'Container',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
