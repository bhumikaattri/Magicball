import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.green[900],
      appBar:AppBar(
         backgroundColor: Colors.green,
         title:Center(child: Text('Ask Me Anything'),),
      ),
    body:Ball(),
    ),
   ),
  );
}  
  
 

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
   int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballNo = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('assets/images/ball$ballNo.png'),
     ),
    );
  }
}