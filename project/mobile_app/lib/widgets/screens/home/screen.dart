import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/card.dart';
import 'package:mobile_app/widgets/screens/home/academic_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAvatarWidget(),
            HomeStudentInfoWidget(),
            AppCard(title: 'Informasi Pribadi', content: Text('content')),
            HomeAcademicWidget(),
            AppCard(title: 'Mata Kuliah', content: Text('content')),
            AppCard(title: 'Kegiatan', content: Text('content')),
            AppCard(content: Text('content')),
          ],
        ),
      ),
    );
  }
}
