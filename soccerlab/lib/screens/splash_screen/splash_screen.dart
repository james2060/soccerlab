import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soccerlab/screens/onboarding_screen/onboarding_screen.dart';
import '../../constants.dart';
import '../../utils.dart';

import '../onboarding_screen/onboarding_screen.dart';

import '../main_screens.dart';
import '../../authentication/email_password/screens/sign_in_screen.dart' as email;


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "SoccerLab",
                    style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child:Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.69*fem, 35.76*fem),
                  width: 123.31*fem,
                  height: 146.24*fem,
                  child: Image.asset('assets/images/club-logo.png', width: 123.31*fem, height: 146.24*fem,),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
//                margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 226*fem),
                   child: Text(
                    'Welcome Greens',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 33*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: TextButton(
                    child: Text("LOGIN"),
                    onPressed: () {
                      _completeSplash(context, email.SignInScreen());
                    },
                  ),
                ),
              ),
            ],
          )),

    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
