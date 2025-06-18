import 'package:flutter/material.dart';
import 'package:flutter_section5/Lecture3%20-%20widgets/test-row&col.dart';
import 'package:flutter_section5/buttons/elevated_button_class.dart';
import 'package:flutter_section5/call%20screens/screen_call1.dart';
import 'package:flutter_section5/icons/icon_widget.dart';
import 'package:flutter_section5/mini_pro/counter_pro.dart';
import 'package:flutter_section5/text_widget/text_widget.dart';
import 'Lecture3 - widgets/screen1.dart';
import 'Quiz App/pages/home_page.dart';
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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
