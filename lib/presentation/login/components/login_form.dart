import 'package:chatting/presentation/login/controllers/login.controller.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_button.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppInput(
            hint: "E-mail",
            controller: controller.emailController,
          ),
          14.heightBox,
          AppInput(
            hint: "Password",
            controller: controller.passwordController,
          ),
          24.heightBox,
          AppButton(
            text: "Login",
            onPressed: controller.handleLogin,
          ),
        ],
      ),
    );
  }
}
