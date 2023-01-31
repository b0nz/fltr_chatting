import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ChatListHeader extends StatelessWidget {
  const ChatListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chatting",
                style: AppFont.header,
              ),
              16.heightBox,
              AppInput(
                hint: "Cari disini!",
                prefixIcon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
