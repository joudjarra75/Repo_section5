import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             //Text
             Text("Hi from icon"),
             //icon
            Icon(IconData(0xf869,fontFamily: 'MaterialIcons')
            ),
             Icon(Icons.person,
               size: 50,
               color: Colors.red,),
             Text("Hi from icon"),
           ],
          ),
        ),
      ),
    );
  }
}
