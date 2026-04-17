import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/screens/home/avatar_widget.dart';
import 'package:mobile_app/widgets/screens/home/student_info_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profil Mahasiswa',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [HomeAvatarWidget(), HomeStudentInfoWidget()]),
    );
  }
}
