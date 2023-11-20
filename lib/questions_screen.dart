import 'package:flutter/material.dart';
import 'package:fourth/answer_button.dart';
import 'package:fourth/data/questions.dart';
import 'package:fourth/quiz.dart';
import 'package:fourth/results_screen.dart';
import 'package:fourth/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';
var correctAnswers = 0;
final List<String> selectedAnswers = [];
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionNumber=0 ;
  //final List<String> selectedAnswers = [];
  void changeQuestion(String text){
    setState(() {
      //questionNumber=questionNumber+1;
      //questionNumber+=1;
      selectedAnswers.add(text);
      if (text == questions[6].answers[questionNumber]){
        correctAnswers+=1;
      }
      questionNumber++;
      if(questionNumber>5){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultScreen(),));
      }
      print(correctAnswers);
      print(selectedAnswers);
    });
  }


  @override
  Widget build(BuildContext context) {

    final currentQuestion =questions[questionNumber];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.text,
                  style: GoogleFonts.robotoCondensed(color: const Color.fromARGB(255, 237, 223, 252),fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ...currentQuestion.getShuffleAnswers().map((item) => AnswerButton(onTap:  (){changeQuestion(item);}, answerText: item)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}


