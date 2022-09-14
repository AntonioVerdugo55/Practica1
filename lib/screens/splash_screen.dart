import 'package:flutter/material.dart';
import 'package:practica1/screens/counter_screen.dart';
import 'package:practica1/screens/dashboard_screen.dart';
import 'package:practica1/screens/login_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../share_preferences/preferencias.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute:
          Preferences.isLogged == false ? LoginScreen() : DashboardScreen(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/bananapp.jpg",
      text: "Monster app",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
