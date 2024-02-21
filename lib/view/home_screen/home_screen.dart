import 'package:feb_20/view/home_screen/tab/call_tab.dart';
import 'package:feb_20/view/home_screen/tab/chat_tab.dart';
import 'package:feb_20/view/home_screen/tab/status_tab.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Whatsapp',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Status',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Call',
                  style: TextStyle(color: Colors.white),
                ),
              ]),
        ),
        body: TabBarView(children: [MyChat(), MyStatus(), MyCall()]),
      ),
    );
  }
}
