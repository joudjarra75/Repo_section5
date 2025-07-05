import 'package:flutter/material.dart';
import 'package:flutter_section5/navgation/home_screen.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return HomeScreen();
              }));
        }, child: Text('Go to Home')),
      ),
    );
  }
}
