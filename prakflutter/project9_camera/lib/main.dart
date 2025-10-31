import 'package:flutter/material.dart';
import 'splash_page.dart';

void main() {
  runApp(const AnnisaCam());
}

class AnnisaCam extends StatelessWidget {
  const AnnisaCam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnnisaCam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB9A7E3),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const SplashPage(),
    );
  }
}