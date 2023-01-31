import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/presentation/chat_room/components/chat_room_content.dart';
import 'package:chatting/presentation/chat_room/components/chat_room_footer.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/chat_room.controller.dart';

class ChatRoomScreen extends GetView<ChatRoomController> {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: _title(),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: const [
            ChatRoomContent(),
            ChatRoomFooter(),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return InkWell(
      onTap: () {},
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
              ),
              16.widthBox,
              Text(
                'User Name',
                style: AppFont.h4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
