import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  const ListViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["Mohammed","Ashraf","Hamzeh","Issam","Ahmed"];
    return Scaffold(
      body:ListView.builder(
        itemCount: names.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
        return customContaier(context,names[index] ,Icons.abc_outlined);
      }) ,
    );
  }
}


Widget customContaier(BuildContext context,String txt,IconData icon){
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      child: Row(
        children: [
          Icon(icon),
          Text(txt,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),),
        ],
      ),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: BoxBorder.all(
            color: Colors.black
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
