import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../utils.dart';
import '../../screens/main_screens.dart';


class OnLoginScreen extends StatelessWidget{

  Widget build(BuildContext context){
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();
    String emailText = '';
    String pwdText = '';
    return Scaffold(
        backgroundColor: kPrimaryColor,

        body:Container(
          width: double.infinity,
        child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            // signinXUS (1:194)
            width: double.infinity,
            height: 812*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Container(
              // backgroundFvE (1:195)
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // headernvA (1:230)
                    padding: EdgeInsets.fromLTRB(34.5*fem, 13*fem, 14.34*fem, 13*fem),
                    width: double.infinity,
                    height: 107*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0*fem, 24*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 28*fem, 68*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // signint7x (1:229)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                      child: Text(
                                        'Log In',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 24*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          color: Color(0xff04754d),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 52*fem),
                                      child: Text(
                                        'Enter Your Email & Password',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5714285714*ffem/fem,
                                          letterSpacing: 0.5*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(

                                      // inputtGN (1:224)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                      width: 318*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(22*fem),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroup6ebkCXx (RiXCxAvXJyKebqmdLr6EBk)
                                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                  child: TextField(
                                                    controller: emailController,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      hintText: 'Enter your email',
                                                      labelStyle: TextStyle(color: Color(0xff8a8a8a)),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                        borderSide:
                                                        BorderSide(width: 1, color: Color(0xff8a8a8a)),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                        borderSide:
                                                        BorderSide(width: 1, color: Color(0xff8a8a8a)),
                                                      ),
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                      ),
                                                    ),
                                                    keyboardType: TextInputType.emailAddress,
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Container(
                                                  child: TextField(
                                                    controller: pwdController,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      hintText: 'Enter your Password',
                                                      labelStyle: TextStyle(color: Color(0xff8a8a8a)),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                        borderSide:
                                                        BorderSide(width: 1, color: Color(0xff8a8a8a)),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                        borderSide:
                                                        BorderSide(width: 1, color: Color(0xff8a8a8a)),
                                                      ),
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                      ),
                                                    ),
                                                    keyboardType: TextInputType.visiblePassword,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 16*fem),
                                      child: TextButton(
                                        onPressed: () {
                                          _callPageRoute(context, MainScreens());
                                        },
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 318*fem,
                                          height: 60*fem,
                                          decoration: BoxDecoration (
                                            color: Color(0xff04754d),
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
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // resetpassgfQ (1:206)
                                      margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 97*fem, 30*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                            child: Text(
                                              'Forgot password?',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff646464),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // resethereJwg (1:208)
                                            'Reset here',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff04754d),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // donthaveanaccounteVk (1:202)
                                      width: double.infinity,
                                      child: Text(
                                        'Don’t have an account?',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5714285714*ffem/fem,
                                          color: Color(0x7f000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                // primarybuttona8W (1:199)
                                onPressed: () {

                                },
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 60*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff373737),
                                    borderRadius: BorderRadius.circular(52*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '회원 가입',
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