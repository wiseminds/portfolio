import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/core/extensions/index.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.accent,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 14.0),
          minimumSize: const Size(50, 55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      onPressed: () => Navigator.pushNamed(context, '/login'),
      child: Text(
        'Login',
        style: context.bodyText1
            ?.copyWith(fontSize: 18, color: context.primaryColor),
      ),
    );
  }
}
