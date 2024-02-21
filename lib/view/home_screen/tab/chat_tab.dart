import 'package:feb_20/view/home_screen/widget/chat_card.dart';
import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  const MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) => MyChatPage(),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 20);
  }
}
