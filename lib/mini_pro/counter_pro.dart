import 'package:flutter/material.dart';

class CounterPro extends StatelessWidget {
  const CounterPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.purple.shade200,
       title: Text("Counter App"),
     ),
      body: Column(
        children: [
          Text("0"),
          Text("Clicked!")
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){} ),
    );
  }
}
// int fun () {}