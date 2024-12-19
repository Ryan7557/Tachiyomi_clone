import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/manga_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tachiyomi Clone',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: const MangaPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
