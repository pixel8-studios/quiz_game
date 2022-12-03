import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/named_routes.dart';
import 'package:quiz_app/src/view/splash/splash_view.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NamedRoutes.SPLASH_VIEW,
      routes: {
        NamedRoutes.SPLASH_VIEW: (_) => const SplashView(),
      },
    );
  }
}
