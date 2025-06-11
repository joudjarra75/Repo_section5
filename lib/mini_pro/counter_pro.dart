import 'package:flutter/material.dart';

class CounterPro extends StatefulWidget {
  CounterPro();

@override
  State<StatefulWidget> createState() {
    return _CounterPro();

  }
}

class _CounterPro extends State<CounterPro>{
  @override
  int counter = 0;
  Widget build(BuildContext context) {

    increseCounter (){
       setState(
           (){
             counter++;
           }
       );
       // debugPrint('$counter');
    }
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.purple.shade200,
       title: Text("Counter App"),
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter'),
            Text("Clicked!"),
            FloatingActionButton(onPressed: (){})
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:increseCounter,
      child:Text("add"),),
      floatingActionButtonLocation:FloatingActionButtonLocation.startDocked ,
    );
  }
}
// int fun () {}