import 'package:flutter/material.dart';
import 'package:whatsapp_clone_assignment/colors.dart';
import 'package:whatsapp_clone_assignment/screens/chat_bar.dart';
import 'package:whatsapp_clone_assignment/widgets/chat_list.dart';
import 'package:whatsapp_clone_assignment/widgets/contacts_list.dart';
import 'package:whatsapp_clone_assignment/widgets/search_bar.dart';
import 'package:whatsapp_clone_assignment/widgets/web_profile.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: dividerColor),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/image/backgroundImage.png'),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                const ChatBar(),
                const Expanded(child: ChatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  padding: const EdgeInsets.all(3),
                  // decoration: const BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(
                  //         // color: dividerColor,

                  //         ),
                  //   ),
                  // ),
                  color: chatBarMessage,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 15, top: 6, bottom: 6),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
