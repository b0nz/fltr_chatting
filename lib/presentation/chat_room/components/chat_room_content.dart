import 'package:chatting/infrastructure/theme/theme.dart';
import 'package:chatting/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

class ChatRoomContent extends StatelessWidget {
  const ChatRoomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return _chatItem(index);
        },
      ),
    );
  }

  Widget _chatItem(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            index % 2 == 0
                ? const SizedBox()
                : const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 21, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
                    decoration: BoxDecoration(
                      color:
                          index % 2 == 0 ? AppColor.lightGrey : AppColor.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Test",
                      style: AppFont.h6.copyWith(color: AppColor.black),
                    ),
                  ),
                  3.heightBox,
                  Text("8:10", style: AppFont.h6),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
