// Padding & Margin

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.amber,
      margin: EdgeInsets.all(20),
      child: Padding(
        // all: tất cả khoảng cách
        // fromLTRB: thứ tự lần lượt trái, trên, phải, dưới
        // only: theo 1 hướng cụ thể, có thể set nhiều
        // symmetric: theo chiều ngang, dọc
        padding: EdgeInsets.all(10),
        child: Text(
          'Flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
