import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../../utils.dart';
import '../main_screens.dart';
import '../welcom_screen/welcome_screen.dart';
import '../signin_screen/signin_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: kPrimaryColor,

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 158.23*fem),
                width: 228*fem,
                height: 211.77*fem,
                child: Image.asset(
                  'assets/images/club-logo-p8i.png',
                  width: 228*fem,
                  height: 211.77*fem,
                ),
              ),
              Container(
                // textSeN (1:59)
                margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 19*fem, 20*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group561LUr (1:66)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 40*fem),
                      padding: EdgeInsets.fromLTRB(70*fem, 0*fem, 70*fem, 0*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(50*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // greenskickCX4 (1:73)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 4*fem),
                            child: Text(
                              'GREENSKICK',
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
                          Container(
                            // welcomeback4JN (1:72)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 45*fem),
                            child: Text(
                              'Welcome Back',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5*ffem/fem,
                                color: Color(0xff595959),
                              ),
                            ),
                          ),
                          Container(
                            // vLa (1:71)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            constraints: BoxConstraints (
                              maxWidth: 196*fem,
                            ),
                            child: Text(
                              '??????????????? ??????????????? ?????? ???????????????\n????????? ?????? ???????????? ?????? ????????? ???????????????.\n?????? ?????? ???????????? ?????? ???????????? ????????? ????????????',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5714285714*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // dotsliderGYr (1:67)
                            margin: EdgeInsets.fromLTRB(66*fem, 0*fem, 67*fem, 0*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(50*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ZH4 (1:68)
                                  width: 10*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(50*fem),
                                    color: Color(0xffd3d3d3),
                                  ),
                                ),
                                SizedBox(
                                  width: 10*fem,
                                ),
                                Container(
                                  // rGA (1:70)
                                  width: 10*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(50*fem),
                                    color: Color(0xffd3d3d3),
                                  ),
                                ),
                                SizedBox(
                                  width: 10*fem,
                                ),
                                Container(
                                  // 8zN (1:69)
                                  width: 23*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(50*fem),
                                    color: Color(0xff04754d),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupiqhxGKt (RiX9RgxueQxkzJ79x3iQHx)
                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 9*fem, 0*fem),
                      width: double.infinity,
                      height: 60*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ghostbuttonMcE (1:63)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {
                                _completeSplash(context, OnWelcomeScreen());
                              },
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 154*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xff373737)),
                                  borderRadius: BorderRadius.circular(52*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    '?????????',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff373737),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // primarybuttonw4e (1:60)
                            width: 154*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff04754d),
                              borderRadius: BorderRadius.circular(52*fem),
                            ),
                            child: Center(
                              child: Text(
                                '??? ??????',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
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
        ),
      );
  }
  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
