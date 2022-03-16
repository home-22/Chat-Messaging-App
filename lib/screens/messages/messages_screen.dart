import 'package:chat/screens/chats/chat_screen.dart';
import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar bulidAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: const [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
        ],
      ),
    );
  }
}
