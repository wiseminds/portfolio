import 'package:portfolio/core/extensions/index.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: context.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 14.0),
          elevation: 0,
          minimumSize: const Size(50, 55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      onPressed: () {
        Navigator.pushNamed(context, '/signup');
      },
      child: Text(
        'Sign Up',
        style: context.bodyText1?.copyWith(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
