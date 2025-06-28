import 'package:flutter/material.dart';

class ItemBeforeListview extends StatelessWidget {
  const ItemBeforeListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Column(
          children: [
            customContaier(context, "A1", Icons.add),
            customContaier(context, "A2", Icons.abc_outlined),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
           customContaier(context, "A1", Icons.add),
            customContaier(context, "A2", Icons.abc_outlined),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),
            customContaier(context, "A13", Icons.score),

        ],),
      )),
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