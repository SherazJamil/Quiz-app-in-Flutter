import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/play_quiz_screen.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Start Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Quiz App',
              style: TextStyle(
                color: foregroundColor,
                fontSize: 45,
                fontWeight: FontWeight.w600,
              ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayQuiz()));
                  },
                  child: const Text(
                    'Start',
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
}