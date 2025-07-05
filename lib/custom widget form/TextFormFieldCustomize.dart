import 'package:flutter/material.dart';


class Textformfieldcustomize extends StatelessWidget {
  String lbl;
  String hint;
  IconData preIcon;
  IconData? suffIcon;
  Color enBorderColor ;
  Color foBorderColor  ;
  Textformfieldcustomize(
      {required this.lbl,
        required this.hint,
        required this.preIcon,
        this.suffIcon ,
        this.enBorderColor = Colors.yellow,
        this.foBorderColor  = Colors.orange,
      });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        label: Text(lbl),
        hintText: hint,
        prefixIcon: Icon(preIcon),
        suffixIcon: Icon(suffIcon),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: enBorderColor,
                width: 2

            )
        ),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
                color: foBorderColor,
                width: 2

            )
        ),
      ),
    );
  }
}