import 'package:flutter/material.dart';

import '../custom widget form/TextFormFieldCustomize.dart';


class FormClass extends StatefulWidget {
  const FormClass({super.key});

  @override
  State<FormClass> createState() => _FormClassState();
}

class _FormClassState extends State<FormClass> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms",
          style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25),),
        backgroundColor: Colors.orange[200],
        centerTitle: true,

      ),
      body: Form(
          key:_formKey ,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                //Text(label-hint) - Icons(3 types) - border


                TextFormField(

                  validator: (input){

                    if(input!.isEmpty){
                      return "This field is empty";
                    }
                    else if (input!.length < 8){
                      return "Please Enter 8 Char at least";
                    }
                    return null;

                  },
                  decoration: InputDecoration(
                    label: Text("email"),
                    hintText: "******",


                  ),

                ),
                Textformfieldcustomize(lbl:"Email",hint: "example@domain.com",
                preIcon: Icons.email,),
                SizedBox(height: 10,),
                Textformfieldcustomize(lbl: "Password", hint: "*******", preIcon: Icons.password,suffIcon: Icons.remove_red_eye_outlined,),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){ //true
                    print("No error");
                  }

                }, child: Text("Login"))


              ],
            ),
          )),
    );
  }
}