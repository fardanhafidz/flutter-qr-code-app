import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/menu_code_page.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/starter_code_page.dart';

import 'pages/generate_code_page.dart';
import 'pages/scan_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner',
      routes: {
        "/start": (context) => const StarterPage(),
        "/menu": (context) => const MenuPage(),
        "/generate": (context) => const GenerateCodePage(),
        "/scan": (context) => const ScanCodePage(),
      },
      initialRoute: "/generate",
    );
  }
}
