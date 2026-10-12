

import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const UnitecnarApp());
}

class UnitecnarApp extends StatelessWidget {
  const UnitecnarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: Color(0xFF10AC1D),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}