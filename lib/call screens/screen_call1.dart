import 'package:flutter/material.dart';
class ScreenCall1 extends StatelessWidget {
  const ScreenCall1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF626ce3),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sister',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight. bold,
                    color: Colors.white
                ),),
              SizedBox(
                height:MediaQuery.of(context).size.height * 0.65 ,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
                        // borderRadius: BorderRadius.all(Radius.elliptical(100, 10))
                        // borderRadius: BorderRadius.circular(150)
                        //   border: Border(
                        //   bottom: BorderSide(
                        //     style: BorderStyle.solid,
                        //     width: 20,
                        //     color: Colors.yellow
                        //   ),
                        //
                        // )
                      ),
                        child: Icon(Icons.person,size: 70,)),
                     Text('Calling ...',
                       style: TextStyle(
                           fontSize: 50,
                           color: Colors.white
                       ),
                       ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white60
                          ),
                          child: Icon(Icons.call,
                          size: 40,
                          color: Colors.green,),
                        ),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white60
                            ),
                            child: Icon(
                              Icons.call_end,color: Colors.red,
                            size: 40,))
                      ],
                    )

                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                  child: Text('Send message'))
            ],
          ),
        ),
      ),
    );
  }
}
