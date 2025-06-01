import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue.shade400 ,
        // backgroundColor:Colors.blue[num] //100-900
        title: Text("App Bar"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(child:Container(
        color: Colors.blue[700],
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Container(
 height: 100,
              // width: 150,
              color: Colors.blue[500],
              child: Row( //child 1 of col
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Icon(Icons.text_decrease),
                Text('Hello line one'),
              ],),
            ),
            Text('Hello line two'), //child 2 of col
          ],
        ),
      ),
      )
    );
  }
}

//layout widget