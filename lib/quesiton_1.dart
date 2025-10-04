import 'package:flutter/material.dart';
import 'package:practice_3_project/question_2.dart';
import 'package:practice_3_project/question_widget.dart';

class Question1 extends StatefulWidget {
  const Question1({super.key});

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return QuestionWidget(
      question: '1. Как ты обычно реагируешь на стресс?',
      options: [
        'Спокойно анализирую ситуацию',
        'Беспокоюсь, но стараюсь держать себя в руках',
        'Раздражаюсь и злюсь',
        'Паникую и теряюсь'
      ],
      scores: [2, 1, 3, 0],
      onNext: (score) {
        totalScore = score;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question2(initialScore: totalScore),
          ),
        );
      },
    );
  }
}