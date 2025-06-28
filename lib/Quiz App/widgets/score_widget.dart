import 'package:flutter/material.dart';


class ScoreWidget extends StatelessWidget {
  int score;
  VoidCallback resetFun;
   ScoreWidget({required this.score,required this.resetFun});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text(
          "Congratulation!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
         Text("Your score is $score"),
        SizedBox(height: 30),
        TextButton(
          onPressed: resetFun,
          child: const Text("Reset"),
        ),
      ],
    );
  }
}
