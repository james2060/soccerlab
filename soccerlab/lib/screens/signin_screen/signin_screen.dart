import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../../utils.dart';
import '../components/default_button.dart';
import './component/form_error.dart';
import '../main_screens.dart';
/*
 * 로그인 페이지
 * ID / PWD 입력/검증 -> mainScreen 호출
 */
class OnSinginScreen extends StatefulWidget {
	@override
	_SinginScreenState createState() => _SinginScreenState();
}

class _SinginScreenState extends State<OnSinginScreen> {
	TextEditingController emailController = TextEditingController();
	TextEditingController pwdController = TextEditingController();
	String emailText = '';
	String pwdText = '';

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('로그인'),
			),
			body: Center(
				child: GestureDetector(
					onTap: () => FocusScope.of(context).unfocus(),
					child: SingleChildScrollView(
						child: Column(
							children: [
								Text('$emailText'),Text('$pwdText'),
								Padding(
									padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
									child: TextField(
										controller: emailController,
										decoration: InputDecoration(
											labelText: 'Email',
											hintText: 'Enter your email',
											labelStyle: TextStyle(color: Colors.redAccent),
											focusedBorder: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
												borderSide:
												BorderSide(width: 1, color: Colors.redAccent),
											),
											enabledBorder: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
												borderSide:
												BorderSide(width: 1, color: Colors.redAccent),
											),
											border: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
											),
										),
										keyboardType: TextInputType.emailAddress,
									),
								),
								Padding(
									padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
									child: TextField(
										controller: pwdController,
										decoration: InputDecoration(
											labelText: 'Password',
											hintText: 'Enter your Password',
											labelStyle: TextStyle(color: Colors.redAccent),
											focusedBorder: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
												borderSide:
												BorderSide(width: 1, color: Colors.redAccent),
											),
											enabledBorder: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
												borderSide:
												BorderSide(width: 1, color: Colors.redAccent),
											),
											border: OutlineInputBorder(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
											),
										),
										keyboardType: TextInputType.visiblePassword,
									),
								),
								ElevatedButton(
									onPressed: () {
										//_callPageRoute(context, appHo());
									},
									child: Text('로그인'),
								),
							],
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
