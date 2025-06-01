import 'package:flutter/material.dart';
import 'Lecture3 - widgets/screen1.dart';
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
      home: ScreenOne(),
      debugShowCheckedModeBanner: false,
    );
  }

}
