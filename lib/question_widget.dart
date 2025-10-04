import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final List<String> options;
  final List<int> scores;
  final Function(int) onNext;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.options,
    required this.scores,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Вопрос')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...List.generate(options.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    onNext(scores[index]);
                  },
                  child: Text(options[index]),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}