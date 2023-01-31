import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_button.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ForgotForm extends StatelessWidget {
  const ForgotForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppInput(hint: "E-mail"),
          24.heightBox,
          AppButton(
            text: "Request New Password",
            onPressed: () {},
          ),
          28.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Can request after",
                style: AppFont.h6,
              ),
              8.widthBox,
              Text(
                "00:15",
                style: AppFont.h6.copyWith(
                  color: AppColor.blue2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
