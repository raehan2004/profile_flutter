import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/card.dart';
import 'package:mobile_app/widgets/global/text/styles.dart';

class HomeAcademicWidget extends StatelessWidget {
  const HomeAcademicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      title: 'AKADEMIK',
      content: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE9EEF8),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 30,
                    color: Color(0xFF3D78C5),
                  ),
                  Text(
                    '6',
                    style: AppTextStyles.sectionTitle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Semester Aktif',
                    style: AppTextStyles.reguler.copyWith(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE9EEF8),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Icon(Icons.group, size: 30, color: Color(0xFF3D78C5)),
                  Text(
                    '112',
                    style: AppTextStyles.sectionTitle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Total SKS',
                    style: AppTextStyles.reguler.copyWith(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE9EEF8),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Icon(
                    Icons.bar_chart,
                    size: 30,
                    color: Color(0xFF3D78C5),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: '3.92',
                          style: AppTextStyles.reguler.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' / 4.00',
                          style: AppTextStyles.reguler.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'IPK',
                    style: AppTextStyles.reguler.copyWith(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
