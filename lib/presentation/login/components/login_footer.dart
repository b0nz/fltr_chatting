import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forgot password?",
                style: AppFont.h6,
              ),
              8.widthBox,
              Text(
                "Reset",
                style: AppFont.h6.copyWith(
                  color: AppColor.blue2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: AppFont.h6,
              ),
              8.widthBox,
              Text(
                "Sign Up",
                style: AppFont.h6.copyWith(
                  color: AppColor.blue2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
