import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Feito por XimioniLabs \n Siga nossas redes sociais',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
            letterSpacing: -0.5,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialMediaButton.youtube(
              url: 'https://www.youtube.com/@ximilabs',
              size: 30,
            ),
            SocialMediaButton.instagram(
              url: 'https://www.instagram.com/ximionilabs/',
              size: 30,
            ),
          ],
        ),
      ],
    );
  }
}
