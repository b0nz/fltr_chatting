import 'package:chatting/presentation/login/components/login_footer.dart';
import 'package:chatting/presentation/login/components/login_form.dart';
import 'package:chatting/presentation/login/components/login_logo.dart';
import 'package:chatting/presentation/login/components/login_social_media.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              78.heightBox,
              const LoginLogo(),
              52.heightBox,
              const LoginForm(),
              28.heightBox,
              const LoginFooter(),
              43.heightBox,
              const LoginSocialMedia(),
            ],
          ),
        ),
      )
    );
  }
}
