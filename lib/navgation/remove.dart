import 'package:flutter/material.dart';

class Remove extends StatelessWidget {
  const Remove({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('home to test'),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('aa'))
          ],
        ),

      ),
    );
  }
}
