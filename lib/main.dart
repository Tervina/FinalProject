import 'package:flutter/material.dart';

import 'screens/00_logo_screen.dart';
import 'screens/01_loginScreen.dart';
import 'screens/02_signUp.dart';
import 'screens/03_screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: K_ost(),
    );
  }
}
