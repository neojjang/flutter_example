import 'package:carrot_market/components/appbar_prefreed_size.dart';
import 'package:carrot_market/components/chat_container.dart';
import 'package:carrot_market/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(
            chatMessage: chatMessageList[index],
          ),
        ),
      ),
    );
  }
}
