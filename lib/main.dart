import 'package:flutter/material.dart';
import 'package:flutter_section5/Lecture3%20-%20widgets/test-row&col.dart';
import 'package:flutter_section5/mini_pro/counter_pro.dart';
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
      home: CounterPro(),
      debugShowCheckedModeBanner: false,
    );
  }

}
