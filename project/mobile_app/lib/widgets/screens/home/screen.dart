import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/card.dart';
import 'package:mobile_app/widgets/global/text/styles.dart';
import 'package:mobile_app/widgets/screens/home/academic_widget.dart';
import 'package:mobile_app/widgets/screens/home/avatar_widget.dart';
import 'package:mobile_app/widgets/screens/home/student_info_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F9),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'PROFIL MAHASISWA',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 15,
            letterSpacing: 0.3,
          ),
        ),
        backgroundColor: const Color(0xFF3D78C5),
        elevation: 0,
        actions: [
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.notifications_none, color: Colors.white),
                Positioned(
                  right: 1,
                  top: 1,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
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
            AppCard(
              title: 'INFORMASI PRIBADI',
              content: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: const [
                    Row(
                      children: [
                        Expanded(
                          child: _InfoItem(
                            icon: Icons.email,
                            label: 'Email',
                            value: 'raehanpratama2017@gmail.com',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _InfoItem(
                            icon: Icons.phone,
                            label: 'Phone',
                            value: '+62 813-1234-4214',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: _InfoItem(
                            icon: Icons.event,
                            label: 'Lahir',
                            value: 'Pematang Siantar, 22 Oktober 2004',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _InfoItem(
                            icon: Icons.location_on,
                            label: 'Alamat',
                            value: 'Jl.Terbaik No. 1',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            HomeAcademicWidget(),
            AppCard(
              title: 'MATA KULIAH',
              content: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _BulletText(text: 'Desain UI/UX'),
                          _BulletText(text: 'Kriptografi'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _BulletText(text: 'Pemrograman Web Lanjut'),
                          _BulletText(text: 'Metode Penelitian'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppCard(
              title: 'KEGIATAN',
              content: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _BulletText(text: 'Ketua PKM (VISTARA) 2024'),
                    _BulletText(text: 'Co-Builder DCN.UINRf'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF3D78C5),
        unselectedItemColor: const Color(0xFF9AA0AA),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        onTap: (_) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Akademik'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 17,
          backgroundColor: const Color(0xFFDDEBFF),
          child: Icon(icon, color: const Color(0xFF3D78C5), size: 18),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: AppTextStyles.infoLabel),
              Text(
                value,
                style: AppTextStyles.reguler.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BulletText extends StatelessWidget {
  const _BulletText({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(
              color: Color(0xFF3D78C5),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.reguler.copyWith(fontSize: 14.5),
            ),
          ),
        ],
      ),
    );
  }
}
