import 'package:flutter/material.dart';
import 'package:social/core/theme/theme.dart';
import 'package:social/features/auth/presentation/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
      title: "Devz",
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
    );
  }
}
