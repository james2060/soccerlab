import 'package:flutter/material.dart';
import '../../constants.dart';


class OnInviteScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
            child: Center(child: Text('Invite Screen', textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffffffff))),)
        ));
  }
}