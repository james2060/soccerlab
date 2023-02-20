import 'package:flutter/material.dart';
import 'package:soccerlab/screens/signin_screen/signin_screen.dart';
import 'dart:ui';
import '../../constants.dart';
import '../../utils.dart';
import '../main_screens.dart';
import 'package:google_fonts/google_fonts.dart';

class OnWelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        backgroundColor: kPrimaryColor,

        body: SingleChildScrollView(
          child: Container(
            // welcomescreen49p (1:119)
            width: double.infinity,
            height: 812*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Container(
              // backgroundZMU (1:120)
              padding: EdgeInsets.fromLTRB(0*fem, 13*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // clublogoF9k (1:170)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 71.23*fem),
                    width: 228*fem,
                    height: 211.77*fem,
                    child: Image.asset(
                      'assets/images/club-logo-kMY.png',
                      width: 228*fem,
                      height: 211.77*fem,
                    ),
                  ),
                  Container(
                    // group2Jti (1:123)
                    margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 28*fem, 20*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupnezvCz6 (RiXAK5ewjYYx52LxYmNezv)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 38*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // welcometogreenskickhfx (1:149)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 66*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 147*fem,
                                ),
                                child: Text(
                                  'Welcome to\nGreensKick',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              //인박스
                              Container(
                                // group560YRg (1:124)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                child: TextButton(
                                  onPressed: () {
                                    _completeSplash(context, OnSinginScreen());
                                  },
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 318*fem,
                                    height: 60*fem,
                                    child: Container(
                                      // btnsignupREa (1:125)
                                      padding: EdgeInsets.fromLTRB(26*fem, 18*fem, 92*fem, 18*fem),
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xff04754d),
                                        borderRadius: BorderRadius.circular(52*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              // inbox1VVL (1:127)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                                              width: 20*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/images/inbox-1.png',
                                                width: 10*fem,
                                                height: 8*fem,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // loginwithemailyvJ (1:131)
                                            'LOGIN WITH EMAIL',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // othermethodGPc (1:132)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // btnsigninwithfbBmU (1:144)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(24*fem, 18*fem, 75*fem, 18*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xff376aed),
                                      borderRadius: BorderRadius.circular(52*fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            // vectord7g (1:147)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/images/vector-B1t.png',
                                              width: 24*fem,
                                              height: 24*fem,
                                            ),
                                          ),
                                          ),
                                          Text(
                                            // loginwithfacebookKWJ (1:146)
                                            'LOGIN WITH FACEBOOK',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // btnsigninwithgoogleS58 (1:133)
                                padding: EdgeInsets.fromLTRB(24*fem, 18*fem, 86*fem, 18*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffcacaca)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(52*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        // icongoogleuUW (1:136)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/images/icongoogle.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // loginwithgooglezkr (1:135)
                                      'LOGIN WITH GOOGLE',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff242424),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // swipeup7Kg (1:166)
                    width: 375*fem,
                    height: 35*fem,
                    child: Image.asset(
                      'assets/images/swipe-up.png',
                      width: 375*fem,
                      height: 35*fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
