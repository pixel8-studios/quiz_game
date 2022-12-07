import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/src/view/login/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: SizedBox(
        height: MediaQuery.of(context).size.height * .6,
        child: Image.asset(
          'assets/images/ximioni_logo.png',
        ),
      ),
      nextScreen: LoginView(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
    );
  }
}
