import 'package:flutter/material.dart';
import 'package:flutter_section5/Quiz%20App/pages/home_page.dart';
import 'package:flutter_section5/images/images.dart';

import '../custom widget form/TextFormFieldCustomize.dart';

class FormClass extends StatefulWidget {
  const FormClass({super.key});

  @override
  State<FormClass> createState() => _FormClassState();
}

TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

class _FormClassState extends State<FormClass> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forms",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange[200],
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //Text(label-hint) - Icons(3 types) - border

              //
              // TextFormField(
              //
              //   validator: (input){
              //
              //     if(input!.isEmpty){
              //       return "This field is empty";
              //     }
              //     else if (input!.length < 8){
              //       return "Please Enter 8 Char at least";
              //     }
              //     return null;
              //
              //   },
              //   decoration: InputDecoration(
              //     label: Text("email"),
              //     hintText: "******",
              //
              //
              //   ),
              //
              // ),
              Textformfieldcustomize(
                lbl: "Email",
                hint: "example@domain.com",
                txt: email,
                preIcon: Icons.email,
              ),
              SizedBox(height: 10),
              Textformfieldcustomize(
                lbl: "Password",
                hint: "*******",
                preIcon: Icons.password,
                suffIcon: Icons.remove_red_eye_outlined,
                txt: pass,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //true
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ImagesClass(name: email.text),
                      ),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
