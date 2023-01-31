import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterSocialMedia extends StatelessWidget {
  const RegisterSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or login with",
          style: AppFont.h6,
        ),
        16.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.red,
            ),
            16.widthBox,
            const FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
