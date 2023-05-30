import 'package:flutter/material.dart';
import '../../constants.dart';


class OnProfileScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
            child: Center(child: Text('Profile Screen', textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffffffff))),)
        ));
  }
}