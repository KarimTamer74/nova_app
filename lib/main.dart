// main.dart
import 'package:flutter/material.dart';
import 'package:nova_app/login_screen.dart';

void main() {
  runApp(NovaApp());
}

class NovaApp extends StatelessWidget {
  const NovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
