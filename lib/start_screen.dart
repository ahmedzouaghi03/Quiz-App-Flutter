import 'package:flutter/material.dart';
import 'package:fourth/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            //color: const Color.fromARGB(128, 255, 255, 255),
            opacity: const  AlwaysStoppedAnimation(0.5),
          ),
          const SizedBox(height: 40),
          const Text(
            'Learn Fluter the fun way!',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const QuestionsScreen(),));
            },
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
            icon:const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
