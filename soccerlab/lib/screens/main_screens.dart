import 'package:flutter/material.dart';
import 'package:soccerlab/screens/welcom_screen/welcome_screen.dart';
import '../models/BottomMenuItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';


class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [ OnWelcomeScreen(),OnboardingScreen(),
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
