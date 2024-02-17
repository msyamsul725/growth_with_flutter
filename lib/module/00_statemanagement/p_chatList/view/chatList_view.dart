import 'package:flutter/material.dart';
import '../controller/chatList_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatListController>(
      init: ChatListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ChatList"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.chatList.length,
                    itemBuilder: (context, index) {
                      var item = controller.chatList[index];
                      return InkWell(
                        onTap: () {
                          item["read"] = true;
                          controller.update();
                        },
                        child: Card(
                          color: item["read"] ? Colors.grey : Colors.green,
                          child: ListTile(
                            title: Text("${item["name"]}"),
                            subtitle: Text("${item["message"]}"),
                            trailing: Icon(
                              Icons.check,
                              size: item["read"] ? 12.0 : 0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
