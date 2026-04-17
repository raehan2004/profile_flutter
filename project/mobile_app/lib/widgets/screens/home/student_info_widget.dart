import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/text/styles.dart';

class HomeStudentInfoWidget extends StatelessWidget {
  const HomeStudentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Muhammad Bunyamin', style: AppTextStyles.title),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('08141123 | Status: ', style: AppTextStyles.reguler),
            Chip(
              backgroundColor: Colors.green,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(horizontal: 4, vertical: -4),
              label: Text('AKTIF', style: AppTextStyles.chip),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text('Sistem Informasi', style: AppTextStyles.reguler_bold),
        Text('Semester 6 | Kelas A', style: AppTextStyles.reguler_bold),
      ],
    );
  }
}
