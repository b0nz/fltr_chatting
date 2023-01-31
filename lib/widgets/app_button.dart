import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  double? width;

  AppButton({super.key, required this.text, this.onPressed, this.width = 500 });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: AppFont.label,
        ),
      ),
    );
  }
}
