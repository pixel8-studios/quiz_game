import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/utils/app_theme.dart';
import 'package:quiz_app/src/view/home/home_view.dart';
import 'package:quiz_app/src/view/login/login_view.dart';
import 'package:quiz_app/src/view/splash/splash_view.dart';

import 'core/utils/named_routes.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: NamedRoutes.SPLASH_VIEW,
      routes: {
        NamedRoutes.SPLASH_VIEW: (_) => const SplashView(),
        NamedRoutes.LOGIN_VIEW: (_) => const LoginView(),
        NamedRoutes.HOME_VIEW: (_) => const HomeView(),
      },
    );
  }
}
