import 'package:flutter/material.dart';

class MyChatPage extends StatelessWidget {
  const MyChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        child: Row(
          children: [
            CircleAvatar(radius: 30),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [Text("user name"), Text("Mesage")],
            ),
            Spacer(),
            Column(
              children: [
                Text("time"),
                CircleAvatar(
                  radius: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
