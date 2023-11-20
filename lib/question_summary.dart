import 'package:flutter/material.dart';
import 'package:fourth/data/questions.dart';
import 'package:fourth/questions_screen.dart';
import 'package:fourth/results_screen.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.i, {Key? key}) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context) {
    String questionText =
        questions[i].text; // Replace this with the actual question text
    String selectedAnswerText = selectedAnswers[i];
    bool isSimilar = questionText == selectedAnswerText;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      // Center horizontally
      children: [
        Container(
            margin:const EdgeInsets.fromLTRB(30,0,0,0),
              padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(100.0)),
            child: Text(
              (i + 1).toString(),
            ),
          ),

        Expanded(
          child: Column(

            // Center horizontally
            children: [
              Text(questions[i].text),
              // Replace this with your actual question text
              Text(selectedAnswers[i]),
              // Replace this with your actual answer text
              Text(questions[i].answers[0]),
              // Replace this with your actual selected answer text
            ],
          ),
        ),
      ],
    );
  }
}
