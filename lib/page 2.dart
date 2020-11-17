
import 'package:flutter/material.dart';

class Two extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nothing Here"),
      ),

      body: Container(
        height: 350.0,
        width: 350.0,
        color: Colors.yellowAccent,
        child: Center(child: Text("WELCOME HERE",style: TextStyle(
          fontSize: 46.0,
          color: Colors.blue
        ),)),
      ),
    );
  }

}