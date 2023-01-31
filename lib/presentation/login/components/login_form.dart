import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_button.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppInput(hint: "E-mail"),
          14.heightBox,
          AppInput(hint: "Password"),
          24.heightBox,
          AppButton(
            text: "Login",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
