import 'package:flutter/material.dart';
import 'package:practice_3_project/start_screen.dart';

void main() {
  runApp(const PsychologyApp());
}

class PsychologyApp extends StatelessWidget {
  const PsychologyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Тест на темперамент',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StartScreen(),
    );
  }
}