

import 'package:animationapp/page%202.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Animation"),

      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 150.0,
          ),

          Center(
            child: Container(
              height: 350.0,
               width: 350.0,
               color: Colors.black,
               child: Center(
                 child: Container(
                   height: 300.0,
                   width: 300.0,
                   color: Colors.deepPurple,
                   child: Center(
                     child: Container(
                       height: 250.0,
                       width: 250.0,
                       color: Colors.deepPurpleAccent,
                       child: Center(
                         child: Container(
                           height: 200.0,
                           width: 200.0,
                           color: Colors.indigoAccent,
                           child: Center(
                             child: Container(
                               height: 150.0,
                               width: 150.0,
                               color: Colors.lightBlueAccent,
                               child: Center(
                                 child: Container(
                                   height: 100.0,
                                   width: 100.0,
                                   color: Colors.tealAccent,
                                   child: Center(
                                     child: Container(
                                       height: 50.0,
                                       width: 50.0,
                                       color: Colors.black,

                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          RaisedButton(
              elevation: 5.0,
              child: Text("Click Here",style: TextStyle(color: Colors.black),),
              color: Colors.red,
              onPressed: (){
                Navigator.of(context).push(_routeto());
                 }
          )
        ],
      ),
    );
  }

}

Route _routeto(){
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation)=>Two(),
          transitionsBuilder: (context, animation, secondaryAnimation, child){
           var begin = Offset(0.0, 1.0);
           var end = Offset.zero;
           var curve = Curves.ease;

           var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

           return SlideTransition(
               position: animation.drive(tween),
            child: child);
  }
  );
}