import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/screens/home/screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: const Color(0xFF242731),
          displayColor: const Color(0xFF242731),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
