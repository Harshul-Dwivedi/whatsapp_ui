import 'package:flutter/material.dart';
import 'package:whatsapp_clone_assignment/colors.dart';
import 'package:whatsapp_clone_assignment/information.dart';
import 'package:whatsapp_clone_assignment/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MobileChatScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: const TextStyle(fontSize: 15),
                        )),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 80,
              )
            ],
          );
        },
        itemCount: info.length,
      ),
    );
  }
}
