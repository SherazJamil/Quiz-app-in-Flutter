import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/questions_model.dart';
import 'package:quiz_app/score_screen.dart';

class PlayQuiz extends StatefulWidget {
  const PlayQuiz({Key? key}) : super(key: key);

  @override
  State<PlayQuiz> createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {

  final PageController pageController = PageController();
  bool isAnswered = false;
  int currentIndex = 0, wrongAnswers =0, correctAnswers = 0;
  String correctAnswer = "", selectedAnswer = "";

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
          'Play Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: backgroundColor,
          ),
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: quizQuestions.length,
          itemBuilder: (context, index) {
          QuizQuestionModel model = quizQuestions[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  model.questions,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  model.options.length
                  , (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                     setState(() {
                       isAnswered = true;
                       selectedAnswer = model.options[index];
                       correctAnswer = model.correctAnswer;
                     });
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: foregroundColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      color: selectedAnswer == model.options[index] ? foregroundColor : backgroundColor,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        model.options[index],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswered) {
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }
            currentIndex++;
            if (currentIndex != quizQuestions.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Score(
                correctAnswers: correctAnswers,
                wrongAnswers: wrongAnswers,
              )));
            }
          }
          else {
            const snackBar = SnackBar(
              shape: StadiumBorder(),
              duration: Duration(milliseconds: 2000),
              behavior: SnackBarBehavior.floating,
              backgroundColor: backgroundColor,
                content: Text(
                    'Please select your answer',
                  style: TextStyle(
                    color: foregroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Container(
          height: 70,
          color: foregroundColor,
          alignment: Alignment.center,
          child: const Text(
            'Next',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}