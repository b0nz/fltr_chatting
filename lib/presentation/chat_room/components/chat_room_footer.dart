import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:chatting/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ChatRoomFooter extends StatelessWidget {
  const ChatRoomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      color: AppColor.lightGrey,
      child: Row(
        children: [
          Expanded(
            child: AppInput(hint: "Tulis pesan"),
          ),
          16.widthBox,
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                color: AppColor.blue2, borderRadius: BorderRadius.circular(30)),
            child: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
