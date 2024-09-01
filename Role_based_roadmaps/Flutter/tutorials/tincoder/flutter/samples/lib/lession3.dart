import 'package:flutter/material.dart';

// StatefulWidget
class MyWidget extends StatefulWidget {
  final bool loading;

  const MyWidget({super.key, required this.loading});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late bool _localLoading;

  @override
  void initState() {
    super.initState();
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator()
        : FloatingActionButton(
            onPressed: () => setState(() {
                  _localLoading = !_localLoading;
                }));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
