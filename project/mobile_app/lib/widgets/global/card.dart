import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/text/styles.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, this.title = 'Judul Card', required this.content});

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(title, style: AppTextStyles.title),
            ),
            content,
          ],
        ),
      ),
    );
  }
}
