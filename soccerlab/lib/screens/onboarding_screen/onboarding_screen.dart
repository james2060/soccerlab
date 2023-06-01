import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../../utils.dart';
import '../main_screens.dart';
import '../welcom_screen/welcome_screen.dart';
import '../signin_screen/signin_screen.dart';
import '../signin_screen/login_screen.dart';
/*
 * SplashScreen -> OnboardingScreen -> SigninScreen
 * 로그인 또는 팀생성 페이지
 * 추후 자동로그인 기능 추가, 팀생성은 로그인 이후에 할 수 있도록 유도
 */
class OnboardingScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.9;

    return Scaffold(
      backgroundColor: kPrimaryColor,


      body: SafeArea(
        child: Container(
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),

          child: Column(
            children: [
              Expanded(
                child:Container(
  /*                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 158.23*fem),
                  width: 228*fem,
                  height: 211.77*fem,*/
                  child: Image.asset(
                    'assets/images/club-logo-p8i.png',
                   width: 228*fem,
                   height: 211.77*fem,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                // textSeN (1:59)
/*                margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 19*fem, 20*fem),
                width: double.infinity,*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      // group561LUr (1:66)
/*                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 40*fem),
                      padding: EdgeInsets.fromLTRB(70*fem, 0*fem, 70*fem, 0*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(50*fem),
                      ),*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            // greenskickCX4 (1:73)
                            //margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 4*fem),
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
                          Expanded(
                            // welcomeback4JN (1:72)
                            //margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 15*fem),
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
                          Expanded(
                            // vLa (1:71)
    /*                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            constraints: BoxConstraints (
                              maxWidth: 196*fem,
                            ),*/
                            child: Text(
                              '그린스킥은 축구동호회 전용 플랫폼으로\n한차원 높은 고품질의 클럽 관리를 지향합니다.\n지금 바로 가입하여 팀을 생성하고 관리해 보십시오',
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
                          Expanded(
            /*                margin: EdgeInsets.fromLTRB(66*fem, 0*fem, 67*fem, 0*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                            ),*/
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                      margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 9*fem, 0*fem),
                      width: double.infinity,
                      height: 30*fem,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {
                            _callPageRoute(context, OnLoginScreen());
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
                                '로그인',
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

                    ),
                    SizedBox(
                      height: 10*fem,
                    ),
                  ],
                ),
              ),),

              ],
          ),

        ),
        ),
      );
  }
  void _callPageRoute(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
