import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: foregroundColor,
              ),
                onPressed: () {},
                child: const Text(
                  'Start',
                  style: TextStyle(
                    color: foregroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}