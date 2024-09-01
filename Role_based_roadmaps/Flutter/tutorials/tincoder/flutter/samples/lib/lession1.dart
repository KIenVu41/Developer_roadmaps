import 'package:flutter/material.dart';

class Lession1 extends StatelessWidget {
  const Lession1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Flutter'),
          ),
          body: const Center(
            child: Text('Hello world'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
