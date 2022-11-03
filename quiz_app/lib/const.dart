import 'package:flutter/material.dart';
import 'questions_model.dart';

const backgroundColor = Color(0xFF1D1D35);
const foregroundColor = Color(0xFF00BF6D);

List<QuizQuestionModel> quizQuestions = [
  QuizQuestionModel(
      questions: "1. Flutter is a framework of" ,
      correctAnswer: "Google",
      options: [
        "Meta",
        "Google",
        "Apple",
        "Oracle",
      ]),
  QuizQuestionModel(
      questions: "2. Flutter is especially used for" ,
      correctAnswer: "Mobile apps",
      options: [
        "Gaming",
        "Mobile apps",
        "Web development",
        "Desktop apps",
      ]),
  QuizQuestionModel(
      questions: "3. Which is the national animal of Pakistan" ,
      correctAnswer: "Markhor",
      options: [
        "Panther",
        "Shaheen",
        "Markhor",
        "Tiger",
      ]),
  QuizQuestionModel(
      questions: "4. React Native is a framework of" ,
      correctAnswer: "Meta",
      options: [
        "Meta",
        "Google",
        "Apple",
        "Oracle",
      ]),
  QuizQuestionModel(
      questions: "5. Which operating system is used in iPhones?" ,
      correctAnswer: "iOS",
      options: [
        "Mac",
        "Windows",
        "Android",
        "iOS",
      ]),
  QuizQuestionModel(
      questions: "6. Flutter apps are written in language" ,
      correctAnswer: "Dart",
      options: [
        "Java",
        "Kotlin",
        "Swift",
        "Dart",
      ]),
  QuizQuestionModel(
      questions: "7. Flutter is an __ mobile application development framework" ,
      correctAnswer: "Open source",
      options: [
        "Open source",
        "Shareware",
        "None",
        "Both A & B",
      ]),
  QuizQuestionModel(
      questions: "8. Which function is responsible for starting the program?" ,
      correctAnswer: "main()",
      options: [
        "runApp()",
        "main()",
        "run()",
        "flutter()",
      ]),
  QuizQuestionModel(
      questions: "9. A notable feature of the Dart platform is its support for “hot reload”" ,
      correctAnswer: "True",
      options: [
        "False",
        "True",
        "None",
        "May be",
      ]),
  QuizQuestionModel(
      questions: "10. Dart language can be compiled" ,
      correctAnswer: "Both AOT & JIT",
      options: [
        "AOT",
        "JIT",
        "None",
        "Both AOT & JIT",
      ]),
];