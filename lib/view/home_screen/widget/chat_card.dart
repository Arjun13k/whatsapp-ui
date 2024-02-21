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
              children: [
                Text(
                  "User name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Mesage")
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text("9:10"),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  backgroundColor: Colors.green,
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
