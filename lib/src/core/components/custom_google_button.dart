import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomGoogleButton extends StatelessWidget {
  Function()? onPressed;
  CustomGoogleButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      height: 45,
      child: ElevatedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                const BorderSide(color: Colors.black45)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.facebook_outlined,
                color: Colors.blue,
                size: 27,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Login com conta google',
                style: TextStyle(
                    color: Colors.black87, letterSpacing: -.5, fontSize: 16),
              ),
            ],
          )),
    );
  }
}
