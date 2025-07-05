import 'package:flutter/material.dart';
import 'package:flutter_section5/Expanded/expanded.dart';
import 'package:flutter_section5/Lecture3%20-%20widgets/test-row&col.dart';
import 'package:flutter_section5/buttons/drop_down_btn.dart';
import 'package:flutter_section5/buttons/elevated_button_class.dart';
import 'package:flutter_section5/call%20screens/screen_call1.dart';
import 'package:flutter_section5/forms/form.dart';
import 'package:flutter_section5/icons/icon_widget.dart';
import 'package:flutter_section5/images/images.dart';
import 'package:flutter_section5/listview/item_before_listview.dart';
import 'package:flutter_section5/listview/list_view.dart';
import 'package:flutter_section5/mini_pro/counter_pro.dart';
import 'package:flutter_section5/navgation/button_screen.dart';
import 'package:flutter_section5/text_widget/text_widget.dart';
import 'Lecture3 - widgets/screen1.dart';
import 'Quiz App/pages/home_page.dart';
main(){
  runApp(MyApp());
} //main


//class (material app)
class MyApp extends StatelessWidget{
  @override

 Widget build(BuildContext context){
    return MaterialApp(
      home:FormClass(),
      debugShowCheckedModeBanner: false,
    );
  }

}

