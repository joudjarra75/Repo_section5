import 'package:flutter/material.dart';

class ImagesClass extends StatefulWidget {
  const ImagesClass({super.key});

  @override
  State<ImagesClass> createState() => _ImagesClassState();
}

class _ImagesClassState extends State<ImagesClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text('This image from assets'),
              Image.asset('assets/images/flutter-3.png'),
              SizedBox(height: 30,),
              Text('This image from network'),
              Image.network('https://plugins.jetbrains.com/files/6351/781467/icon/default.png',
              height: 120,
              width: 120,
              color: Colors.yellow,),
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.yellow,
                child: Image.network(
fit: BoxFit.fill,
                    'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg'),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      NetworkImage('https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg',),
                    fit: BoxFit.contain
                  ),
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
