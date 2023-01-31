import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_button.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppInput(hint: "Name"),
          14.heightBox,
          AppInput(hint: "E-mail"),
          14.heightBox,
          AppInput(hint: "Password"),
          24.heightBox,
          AppButton(
            text: "Register",
            onPressed: () {},
          ),
          25.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: AppFont.input,
              ),
              8.widthBox,
              Text(
                "Login",
                style: AppFont.input.copyWith(
                  color: AppColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
