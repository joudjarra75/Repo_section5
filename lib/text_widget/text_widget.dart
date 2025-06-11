import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 150, 150, 0.5),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(128, 200, 150, 150),
        title: Text('AppBar  word',
          style: TextStyle(
            // backgroundColor: Color.fromRGBO(200, 150, 150, 1),
            // color: Colors.orange[200],
            fontWeight: FontWeight.bold,
            fontSize: 30,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dotted,
            decorationThickness: 5,
            fontStyle: FontStyle.italic,
            letterSpacing: 10,
            wordSpacing: 20,

          ),

        ),
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Welcome",
            style: TextStyle(
              fontSize: 50,
              shadows: <Shadow>[
                Shadow(color: Colors.white,blurRadius:20,offset: Offset(0, 20)),

              ],
              fontFamily:'Font2'
            ),),
          RichText(text: TextSpan(text: 'Don\'t have an account?',children: [
            TextSpan(text: 'Sign up', style: TextStyle(
              color: Colors.blue
            )),// child 1(style1)
         TextSpan(text: "TEST",style: TextStyle(fontFamily: 'Font1')) ]) )//parent)
          ],
        ),
      ),
    );
  }
}
