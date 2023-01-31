import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/chat_room.controller.dart';

class ChatRoomScreen extends GetView<ChatRoomController> {
  const ChatRoomScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatRoomScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChatRoomScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
