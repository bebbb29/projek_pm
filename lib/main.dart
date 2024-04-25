import 'package:flutter/material.dart';
import 'package:tugas_habib/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 183, 58, 156)),
        useMaterial3: true,
      ),
      home: const ListScreen(),
    );
  }
}