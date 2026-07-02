// main.dart
import 'package:flutter/material.dart';
import 'package:nova_app/home_screen.dart';

void main() {
  // List values = ['a', true];
  // List myList = [1, 2, 3,values];
  runApp(NovaApp());
}

class NovaApp extends StatelessWidget {
  const NovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
