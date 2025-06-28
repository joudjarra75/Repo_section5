import 'package:flutter/material.dart';

import '../models/question_model.dart';
import 'answer_widget.dart';

class QuestionAnswerWidget extends StatefulWidget {
  int index;
  VoidCallback increase;
  QuestionAnswerWidget({required this.index, required this.increase});

  @override
  State<QuestionAnswerWidget> createState() => _QuestionAnswerWidgetState();
}

class _QuestionAnswerWidgetState extends State<QuestionAnswerWidget> {
  int indexChosen = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Text(
          questions[widget.index].title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 40),
        Column(
          children: List.generate(questions[widget.index].answerList.length, (
            counter,
          ) {
            return AnswerWidget(
              answerModel: questions[widget.index].answerList[counter],
              increseFun: () {
                setState(() {
                  indexChosen = counter;
                });
              },
              isChosen: indexChosen == counter,
            );
          }),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            widget.increase();
            indexChosen = -1;
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Next",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        ),
      ],
    );
  }
}
