import 'package:flutter/material.dart';
import 'package:quiz_app/src/services/authentication.dart';

import '../../core/components/custom_google_button.dart';
import '../../core/components/logo_presentation.dart';
import '../../core/components/social_media_buttons.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * .57,
                  child: const LogoPresentation()),
              SizedBox(
                height: MediaQuery.of(context).size.height * .38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomGoogleButton(onPressed: () {
                      return Authentication.signInWithGoogle(context: context);
                    }),
                    const SocialMediaButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
