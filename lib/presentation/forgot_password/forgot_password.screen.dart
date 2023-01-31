import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/presentation/forgot_password/components/forgot_form.dart';
import 'package:chatting/presentation/forgot_password/components/forgot_logo.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/forgot_password.controller.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: AppFont.header.copyWith(
            color: AppColor.blackComponent,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              78.heightBox,
              const ForgotLogo(),
              52.heightBox,
              const ForgotForm(),
            ],
          ),
        ),
      ),
    );
  }
}
