import 'package:chatting/presentation/chat_list/components/chat_list_content.dart';
// import 'package:chatting/presentation/chat_list/components/chat_list_footer.dart';
import 'package:chatting/presentation/chat_list/components/chat_list_header.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/chat_list.controller.dart';

class ChatListScreen extends GetView<ChatListController> {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              23.heightBox,
              const ChatListHeader(),
              const ChatListContent(),
              // const ChatListFooter(),
            ],
          ),
        ),
    );
  }
}
