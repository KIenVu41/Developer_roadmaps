// Custom font
// 1. Download font
// 2. Tạo thư mục assets trong root và copy font bên trong
// 3. Config font trong file pubspect.yaml và run flutter pub get

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // cài đặt font trong root widget apply cho ứng dụng
    theme: ThemeData(fontFamily: 'Dancing_Script'),
    home: const Scaffold(),
  ));
}
