import 'package:flutter/material.dart';

class LogoPresentation extends StatelessWidget {
  const LogoPresentation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Quiz APP',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
        const Text(
          'Seja bem-vindo!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * .015),
        Image.asset(
          alignment: Alignment.center,
          'assets/images/ximioni_logo.png',
          height: MediaQuery.of(context).size.height * .4,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
