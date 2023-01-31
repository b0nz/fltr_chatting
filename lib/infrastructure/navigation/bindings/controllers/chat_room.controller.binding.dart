import 'package:get/get.dart';

import '../../../../presentation/chat_room/controllers/chat_room.controller.dart';

class ChatRoomControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatRoomController>(
      () => ChatRoomController(),
    );
  }
}
