import 'package:flutter/material.dart';
import '../models/BottomMenuItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/Fixtures_screen/fixtures_screen.dart';
import '../screens/team_screen/team_screen.dart';
import '../screens/invite_screen/invite_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  const MainScreens({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  late bool _isEmailVerified;
  late User _user;

  bool _verificationEmailBeingSent = false;
  bool _isSigningOut = false;



  @override
  void initState() {
    _user = widget._user;
    _isEmailVerified = _user.emailVerified;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [ OnHomeScreen(),OnFixturesScreen(),OnTeamScreen(),OnInviteScreen(),OnProfileScreen(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
          btmItems.length,
              (index) => _buildBottomNavigationBarItem(
            icon: btmItems[index].icon,
            label: btmItems[index].label,
            isActive: btmItems[index].id == _selectedIndex ? true : false,
          ),
        ),
      ),

    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem(
      {String? icon,
        String? label,
        bool isActive = false,
        GestureTapCallback? press}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
      width: 38,
        height: 38,
        child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(icon ?? "assets/icons/star.svg",
              color: isActive ? kPrimaryColor : Colors.black),
        ),
      ),
      label: label,
    );
  }
}
