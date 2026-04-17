import 'package:flutter/material.dart';

class HomeAvatarWidget extends StatelessWidget {
  const HomeAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Colors.blue,
          ),
        ),
        Center(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.blue[200],
            child: Icon(Icons.person, size: 100, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
