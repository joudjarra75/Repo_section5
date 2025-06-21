import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/models/answer_model.dart';
import 'package:flutter_section5/Quiz%20App/models/question_model.dart';
import 'package:flutter_section5/Quiz%20App/widgets/answer_widget.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int index = 0 ;
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(questions[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
              Column(
                  children: questions[index].answerList.map((a) {
                    return AnswerWidget(answerModel:a,
                    increseFun: (){
                     setState(() {
                       if(index < questions.length - 1){
                         index++;
                       }
                     });
                    },); }).toList()
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
