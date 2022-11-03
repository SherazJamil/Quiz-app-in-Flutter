import 'package:flutter/material.dart';
import 'const.dart';
import 'play_quiz_screen.dart';

class Score extends StatelessWidget {

  int correctAnswers, wrongAnswers;

   Score({Key? key, required this.correctAnswers, required this.wrongAnswers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        leading: IconButton(
          onPressed: (){
            Navigator. pop(context);
          },
          icon: const Icon(
            Icons. arrow_back_ios,
            color: backgroundColor,
          ),
        ),
        title: const Text(
          'Score',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: backgroundColor,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                score('Correct Answers', correctAnswers),
                score('Wrong Answers', wrongAnswers),
              ],
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: foregroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const PlayQuiz()), (route) => false);
                },
                child: const Text(
                  'Start Again',
                  style: TextStyle(
                    color: foregroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget score(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '$value',
          style: const TextStyle(
            color: foregroundColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}