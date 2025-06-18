import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/widgets/answer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> answers = [
      {
        "item" : "Pasta",
        "onPress" : () => debugPrint('pasta')
      },
      {
        "item" : "Rice",
        "onPress" : () => debugPrint('rice')
      },
      {
        "item" : "Mansaf",
        "onPress" : () => debugPrint('mansaf')
      },

    ];
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text('What is your fav food?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
              Column(
                  children: answers.map((a) {
                    return AnswerWidget(answerMap: a); }).toList()
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
