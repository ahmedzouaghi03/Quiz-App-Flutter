import 'package:flutter/material.dart';
import 'package:fourth/data/questions.dart';
import 'package:fourth/question_summary.dart';
import 'package:fourth/questions_screen.dart';
import 'package:fourth/quiz.dart';
import 'package:fourth/start_screen.dart';
bool isCorrectAnswer = true ;
class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  void restart (){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Quiz(),));
    });
  }
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = []; //String hiya l key w Object hiya l value

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        //taw bech nda5al bl key bl key w kol key na3tih l value mte3ou
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],

      });

      isCorrectAnswer = questions[i].answers[0]==selectedAnswers[i];

    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = correctAnswers;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      child: SingleChildScrollView(
                        child: Column(

                          // Center horizontally
                          children: [
                            Text('You answered $numCorrectQuestions correct answers out of ${numTotalQuestions -1}'),
                            const SizedBox(height: 50),
                            /*const Text("List of answers and questions"),
                            const SizedBox(height: 30,),
                            TextButton(onPressed: (){}, child: const Text('Restart Quiz')),*/

                            const QuestionSummary(0),
                            const SizedBox(height: 20),
                            const QuestionSummary(1),
                            const SizedBox(height: 20),
                            const QuestionSummary(2),
                            const SizedBox(height: 20),
                            const QuestionSummary(3),
                            const SizedBox(height: 20),
                            const QuestionSummary(4),
                            const SizedBox(height: 20),
                            const QuestionSummary(5),


                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextButton(
                      onPressed: restart,
                      child: const Text('Restart Quiz'),
                    ),
                  ],
                ),

          ),
        ),
      ),
    );
  }
}


