import 'package:flutter/material.dart';
class PopMenuItemClass extends StatefulWidget {
  const PopMenuItemClass({super.key});

  @override
  State<PopMenuItemClass> createState() => _PopMenuItemClassState();
}

List<String> color = ['red','green','blue'];
Color c = Colors.white;
String? selectedItem ;
class _PopMenuItemClassState extends State<PopMenuItemClass> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        
        title: Text('App bar'),
        actions: [
          PopupMenuButton(
            // color: Colors.blue,
            surfaceTintColor: Colors.yellow,
            // initialValue: 'red',
// padding: EdgeInsets.all(70),

            menuPadding: EdgeInsets.all(50),
            offset: Offset(0, 30),
            onOpened: () => print('open'),
            // onCanceled: ()=> print('cancle'),
            onSelected: (newValue){
             setState(() {
               selectedItem = newValue;
             });
              switch(selectedItem){
                case 'red':
                  c = Colors.red;
                case 'blue':
                  c = Colors.blue;
                case 'green':
                  c = Colors.green;
              }
            },
            // icon: Text('kk'),
            //   child: Icon(Icons.add),
              itemBuilder: (context){
          return color.map((c) => PopupMenuItem(
            value: c,
              child: Text(c))).toList();
          })
        ],
      ),
      body: Center(
        child: Text("Pop up menu button",style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
