import 'package:flutter/material.dart';
import 'package:practice_3_project/quesiton_1.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тест на темперамент')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Пройди короткий тест,\nчтобы узнать свой тип темперамента!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Question1()),
                );
              },
              child: const Text('Начать тест'),
            ),
          ],
        ),
      ),
    );
  }
}


