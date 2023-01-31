import 'package:chatting/infrastructure/navigation/routes.dart';
import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 10,
        itemBuilder: (context, index) => _userListItem(),
      ),
    );
  }

  Widget _userListItem() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CHAT_ROOM);
      },
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            10.widthBox,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Name',
                    style: AppFont.header,
                  ),
                  5.heightBox,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: AppFont.input,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Text(
              '12:00',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
