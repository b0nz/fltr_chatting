import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String hint;
  TextEditingController? controller;
  final Widget? prefixIcon;
  final bool? obsecureText;

  AppInput({
    Key? key,
    required this.hint,
    this.controller,
    this.prefixIcon,
    this.obsecureText,
  }) : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obsecureText ?? false,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppFont.h6.copyWith(
            color: AppColor.grey3,
          ),
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColor.grey1,
            ),
          ),
        ),
      ),
    );
  }
}
