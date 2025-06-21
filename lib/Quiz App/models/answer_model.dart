import 'package:flutter/material.dart';
class AnswerModel {
  final title;
  VoidCallback onPress;

  AnswerModel({required this.title, required this.onPress});
}
AnswerModel answer = AnswerModel(title: "Ice cream", onPress: (){});
