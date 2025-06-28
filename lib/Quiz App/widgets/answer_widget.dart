import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/models/answer_model.dart';

class AnswerWidget extends StatelessWidget {
  AnswerModel answerModel;
  VoidCallback increseFun;
  bool isChosen = false;
  AnswerWidget({required this.answerModel,required this.increseFun , required this.isChosen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            answerModel.onPress();
            increseFun();
          },
          child: DecoratedBox(decoration:
          BoxDecoration(
           color: isChosen ? Colors.green : Colors.white,
             borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black,
            width: 2)
          ),
            child: SizedBox(
              height: 60,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.add,
                  size: 40,),
                   // SizedBox(width: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 30),
                     child: Text(answerModel.title,
                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     )),
                   )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }

  // ElevatedButton(onPressed: (){
//           answerModel.onPress();
//           increseFun();
//         }
//           ,  child:  Text(answerModel.title)),
}
