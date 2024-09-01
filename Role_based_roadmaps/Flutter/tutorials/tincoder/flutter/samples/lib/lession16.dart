// Stack
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 500,
      width: 500,
      child: Stack(
        alignment: Alignment.topRight,
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              color: Colors.green,
              width: 200,
              height: 200,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
