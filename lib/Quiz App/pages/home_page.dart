import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/models/question_model.dart';
import 'package:flutter_section5/Quiz%20App/widgets/answer_widget.dart';
import 'package:flutter_section5/Quiz%20App/widgets/question_answer_widget.dart';
import 'package:flutter_section5/Quiz%20App/widgets/score_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int index = 0;
  int score = 0;
  int limitScore = questions.length * 5;
  bool scoreScreen = false;
  Widget build(BuildContext context) {
    scoreScreen = score >= limitScore;
    print(score);
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                !scoreScreen
                    ? QuestionAnswerWidget(
                      index: index,
                      increase: () {
                        setState(() {
                          if (index < questions.length - 1) {
                            index++;
                          }
                          score += 5;
                        });
                      },
                    )
                    : ScoreWidget(
                      score: score,
                      resetFun: () {
                        setState(() {
                          index = 0;
                          score = 0;
                        });
                      },
                    ),
          ),
        ),
      ),
    );
  }
}

//condition(true,false) ? Widget() : Widget2()
