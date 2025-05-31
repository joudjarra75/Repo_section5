import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
} //main


//class (material app)
class MyApp extends StatelessWidget{
  @override
  // int function(){
  // return 6; }
  //int x
 Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Hello App Bar"),
          backgroundColor:Colors.yellow ,

        ),

      ),
      // debugShowCheckedModeBanner: false,
    );
  }

}
