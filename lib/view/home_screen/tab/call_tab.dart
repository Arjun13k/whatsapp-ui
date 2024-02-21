import 'package:flutter/material.dart';

class MyCall extends StatelessWidget {
  const MyCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Call',
          style: TextStyle(color: Colors.black),
        ),
      ),
      color: Colors.pink,
    );
  }
}
