import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/text/styles.dart';

class HomeStudentInfoWidget extends StatelessWidget {
  const HomeStudentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(
          'RAEHAN PRATAMA SINAGA',
          style: AppTextStyles.nameTitle,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('23021450037 | Status: ', style: AppTextStyles.reguler),
            Chip(
              backgroundColor: Colors.green,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(horizontal: 5, vertical: -4),
              label: Text('AKTIF', style: AppTextStyles.chip),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text('Sistem Informasi', style: AppTextStyles.reguler_bold),
        RichText(
          text: TextSpan(
            style: AppTextStyles.reguler.copyWith(color: Colors.black),
            children: [
              const TextSpan(text: 'Semester: '),
              TextSpan(
                text: '6',
                style: AppTextStyles.reguler.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(text: ' • Klass: '),
              TextSpan(
                text: 'SI-I-2023',
                style: AppTextStyles.reguler.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
