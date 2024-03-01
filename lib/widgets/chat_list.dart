import 'package:flutter/material.dart';
import 'package:whatsapp_clone_assignment/information.dart';
import 'package:whatsapp_clone_assignment/widgets/msg_card.dart';
import 'package:whatsapp_clone_assignment/widgets/sender_msg_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time1'].toString());
        }
        return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
