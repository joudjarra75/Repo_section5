import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({super.key});

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String value = 'option';
  @override
  Widget build(BuildContext context) {
    List<String> items = ['one', 'two', 'three', 'option'];
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: DropdownButtonFormField(
          menuMaxHeight:200,
          // itemHeight:15 ,
          // isExpanded: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.yellow[100],
            border: OutlineInputBorder()
          ),
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          borderRadius: BorderRadius.circular(20),

          value: value,
          items:
              items
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item),
                    enabled: true,),
                  )
                  .toList(),
          onChanged: (i) {
            setState(() {
              value = i!;
            });
          },
        ),
      ),
    );
  }
}
