import 'package:chatting/presentation/register/components/register_form.dart';
import 'package:chatting/presentation/register/components/register_logo.dart';
import 'package:chatting/presentation/register/components/register_social_media.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              78.heightBox,
              const RegisterLogo(),
              52.heightBox,
              const RegisterForm(),
              43.heightBox,
              const RegisterSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
