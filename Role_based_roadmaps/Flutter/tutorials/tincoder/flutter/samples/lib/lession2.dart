import 'package:flutter/material.dart';

// StatelessWidget, State
class MyWidget extends StatelessWidget {
  final bool isLoading;

  const MyWidget({super.key, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return isLoading ? const CircularProgressIndicator() : const Text('State');
  }
}
