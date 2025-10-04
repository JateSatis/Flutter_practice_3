import 'package:flutter/material.dart';
import 'package:practice_3_project/question_widget.dart';
import 'package:practice_3_project/result_screen.dart';

class Question3 extends StatefulWidget {
  final int initialScore;
  const Question3({super.key, required this.initialScore});

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  late int totalScore;

  @override
  void initState() {
    super.initState();
    totalScore = widget.initialScore;
  }

  @override
  Widget build(BuildContext context) {
    return QuestionWidget(
      question: '3. Как часто ты меняешь планы?',
      options: [
        'Почти никогда — люблю стабильность',
        'Иногда, если есть веская причина',
        'Часто — мне нравится спонтанность',
        'Постоянно — скучно делать одно и то же'
      ],
      scores: [0, 1, 2, 3],
      onNext: (score) {
        totalScore += score;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(totalScore: totalScore),
          ),
        );
      },
    );
  }
}