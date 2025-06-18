import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  Map <String,dynamic> answerMap;
  AnswerWidget({required this.answerMap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: answerMap["onPress"],
            child: Text(answerMap["item"])),
      ),
    );
  }
}
