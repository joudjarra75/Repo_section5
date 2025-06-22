import 'package:flutter/material.dart';

import '../models/question_model.dart';
import 'answer_widget.dart';

class QuestionAnswerWidget extends StatelessWidget {
  int index;
  VoidCallback increase;
   QuestionAnswerWidget({required this.index, required this.increase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questions[index].title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),),
        Column(
            children: questions[index].answerList.map((a) {
              return AnswerWidget(answerModel:a,
                increseFun: increase
               ,); }).toList()
        )
      ],
    );
  }
}
