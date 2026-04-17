import 'package:flutter/material.dart';

class HomeStudentInfoWidget extends StatelessWidget {
  const HomeStudentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Muhammad Bunyamin',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('08141123 | Status: ', style: TextStyle(fontSize: 16)),
            Chip(
              backgroundColor: Colors.green,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(horizontal: 4, vertical: -4),
              label: Text(
                'AKTIF',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ],
        ),
        Text(
          'Sistem Informasi',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Semester 6 | Kelas A',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
