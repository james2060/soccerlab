import 'package:flutter/material.dart';
import '../../constants.dart';


class OnTeamScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
            child: Center(child: Text('Team Screen', textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffffffff))),)
        ));
  }
}