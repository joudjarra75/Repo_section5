import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/models/answer_model.dart';

class QuestionModel{
  final title;
List <AnswerModel> answerList ;
  QuestionModel({required this.title, required this.answerList});
}

List <QuestionModel> questions = [
  QuestionModel(
      title: "What is your fav food?",
  answerList:  [
    AnswerModel(title: "Pasta", onPress: () => debugPrint('pasta')),
    AnswerModel(title: "Rice", onPress:  () => debugPrint('rice')),
    AnswerModel(title: "Mansaf", onPress: () => debugPrint('mansaf')),
    AnswerModel(title: "Ice cream", onPress: () => debugPrint('Ice cream')),
  ]),
  QuestionModel(title: "What is your fav color?",
  answerList: [
    AnswerModel(title: "Red", onPress: () => debugPrint('red')),
    AnswerModel(title: "Pink", onPress:  () => debugPrint('pink')),
    AnswerModel(title: "yellow", onPress: () => debugPrint('yellow')),
    AnswerModel(title: "Green", onPress: () => debugPrint('green')),
  ]),
  QuestionModel(title: "What is your fav team?",
  answerList: [
    AnswerModel(title: "hussin", onPress: () => debugPrint('hussin')),
    AnswerModel(title: "wehdat", onPress:  () => debugPrint('wehdat')),
    AnswerModel(title: "barcalona", onPress: () => debugPrint('barcalona')),
    AnswerModel(title: "barcalona", onPress: () => debugPrint('barcalona')),
  ]),
  QuestionModel(title: "What is your fav car?",
  answerList: [
    AnswerModel(title: "KIA", onPress: () => debugPrint('KIA')),
    AnswerModel(title: "BMW", onPress:  () => debugPrint('BMW')),
    AnswerModel(title: "Audi", onPress: () => debugPrint('Audi')),
    AnswerModel(title: "Audi", onPress: () => debugPrint('Audi')),
  ]),
];