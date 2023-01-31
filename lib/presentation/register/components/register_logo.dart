import 'package:chatting/utils/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterLogo extends StatelessWidget {
  const RegisterLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              ImgString.appLogo,
              width: 100,
              height: 100,
            ),
            const Text(
              'Chatting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Chatting is a messaging app that allows you to send messages to your friends and family.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
