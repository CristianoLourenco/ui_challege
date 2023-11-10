import 'package:flutter/material.dart';
import 'package:ui_challenge_flutter/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          // colorScheme: ColorScheme.fromSeed(seedColor: ),
          textTheme: GoogleFonts.robotoTextTheme(),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white)),
      home: const HomePage(),
    );
  }
}
