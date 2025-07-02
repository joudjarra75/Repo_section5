import 'package:flutter/material.dart';
import 'package:flutter_section5/navgation/button_screen.dart';
import 'package:flutter_section5/navgation/remove.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Hi'),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ButtonScreen();
                  }));
            }, child: Text('Button screen')),
            ElevatedButton(onPressed: (){
             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => Remove()), (route) => false);},
                child: Text('remove'))
          ],
        ),
        
      ),
    );
  }
}
