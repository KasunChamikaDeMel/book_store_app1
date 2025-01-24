import 'package:flutter/material.dart';
import 'book_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mid-term Book Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BookstorePage(),
    );
  }
}
