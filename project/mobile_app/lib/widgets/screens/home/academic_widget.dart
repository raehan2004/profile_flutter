import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/global/card.dart';

class HomeAcademicWidget extends StatelessWidget {
  const HomeAcademicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      title: 'Akademik',
      content: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.calendar_today, size: 30, color: Colors.blue),
                  Text('6', style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    'Semester Aktif',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.calendar_today, size: 30, color: Colors.blue),
                  Text('6', style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    'Semester Aktif',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.calendar_today, size: 30, color: Colors.blue),
                  Text('6', style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    'Semester Aktif',
                    style: Theme.of(context).textTheme.bodySmall,
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
