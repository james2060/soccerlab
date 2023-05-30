import 'package:flutter/material.dart';
import '../../constants.dart';


class OnHomeScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Center(child: Text('Home Screen', textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xffffffff))),)

    ));
  }
}