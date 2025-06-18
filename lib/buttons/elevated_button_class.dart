import 'package:flutter/material.dart';

class ElevatedButtonClass extends StatelessWidget {
  const ElevatedButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(

              margin: EdgeInsets.symmetric(vertical: 20),
                child: Text("Elevated Button")),
            ElevatedButton(
                onPressed: () => debugPrint('Elevated btn clicked'),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  child: Text('Click'),
                ),
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
                 shape:LinearBorder()
            ) ,)

          ],
        ),
      ),
    );
  }
}
