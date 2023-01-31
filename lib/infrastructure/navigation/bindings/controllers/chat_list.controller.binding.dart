import 'package:get/get.dart';

import '../../../../presentation/chat_list/controllers/chat_list.controller.dart';

class ChatListControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(
      () => ChatListController(),
    );
  }
}
