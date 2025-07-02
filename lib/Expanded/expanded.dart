import 'package:flutter/material.dart';

class ExpandedClass extends StatefulWidget {
  const ExpandedClass({super.key});

  @override
  State<ExpandedClass> createState() => _ExpandedClassState();
}

class _ExpandedClassState extends State<ExpandedClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 120,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              height: 120,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
