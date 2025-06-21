import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/models/answer_model.dart';

class AnswerWidget extends StatelessWidget {
  AnswerModel answerModel;
  VoidCallback increseFun;
  AnswerWidget({required this.answerModel,required this.increseFun});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){
          answerModel.onPress();
          increseFun();
        }
          ,  child: Text(answerModel.title)),
      ),
    );
  }
}
