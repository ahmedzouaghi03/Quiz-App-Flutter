import 'package:fourth/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestions(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for IOS and Android Studio for Android',
    ],
  ),
  QuizQuestions(
    'What is the  purpose of a Stateful Widget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data Changes',
      'Render UI that does not depends on data',
    ],
  ),
  QuizQuestions(
    'Which widget should you try to use more often : Stateful Widget or Stateless Widget?',
    [
      'Stateful Widget',
      'Stateless Widget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],

  ),
  QuizQuestions(
    'Correct Answers',
    [
      'Widgets',
      'By combining widgets in code',
      'Update UI as data changes',
      'Stateful Widget',
      'The UI is not updated',
      'By calling setState()',
    ],

  ),
];
