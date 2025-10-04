import 'package:flutter/material.dart';
import 'package:practice_3_project/start_screen.dart';

class ResultScreen extends StatelessWidget {
  final int totalScore;

  const ResultScreen({super.key, required this.totalScore});

  String getTemperament() {
    if (totalScore <= 2) return 'Меланхолик';
    if (totalScore <= 5) return 'Флегматик';
    if (totalScore <= 7) return 'Сангвиник';
    return 'Холерик';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Результат')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Твой тип темперамента:',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              getTemperament(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Text(
              'Набрано баллов: $totalScore из 9',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const StartScreen()),
                );
              },
              child: const Text('Пройти тест снова'),
            ),
          ],
        ),
      ),
    );
  }
}