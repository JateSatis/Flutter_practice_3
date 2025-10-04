import 'package:flutter/material.dart';
import 'package:practice_3_project/question_3.dart';
import 'package:practice_3_project/question_widget.dart';

class Question2 extends StatefulWidget {
  final int initialScore;
  const Question2({super.key, required this.initialScore});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  late int totalScore;

  @override
  void initState() {
    super.initState();
    totalScore = widget.initialScore;
  }

  @override
  Widget build(BuildContext context) {
    return QuestionWidget(
      question: '2. Как ты ведёшь себя в новой компании?',
      options: [
        'Быстро завожу знакомства',
        'Жду, пока со мной заговорят',
        'Общаюсь осторожно и сдержанно',
        'Стараюсь держаться в стороне'
      ],
      scores: [3, 2, 1, 0],
      onNext: (score) {
        totalScore += score;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question3(initialScore: totalScore),
          ),
        );
      },
    );
  }
}