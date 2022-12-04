import 'package:counter_ap/pages/birinchi_bet.dart';
import 'package:counter_ap/pages/ekinchi_bet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: BirinchiBet(),
    );
  }
}
