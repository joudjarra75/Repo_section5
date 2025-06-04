import 'package:flutter/material.dart';

class TestRowCol extends StatelessWidget {
  const TestRowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('App Bar'),
      ),
      body:Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Text("Welcome to sdk"),
            Container(
              height: 200,
              // width: 100,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person,
                  ),
                  Text('JOUD'),

                ],


              ),
            ),
            Text('JOUD jjj'),

          ],
        ),
      ) ,
    );
  }
}
