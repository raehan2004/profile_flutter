import 'package:flutter/material.dart';

class HomeAvatarWidget extends StatelessWidget {
  const HomeAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Color(0xFF3D78C5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 28),
          child: Center(
            child: CircleAvatar(
              radius: 63,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 58,
                backgroundImage: AssetImage('assets/images/Raehan_HIMSI.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
