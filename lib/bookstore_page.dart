import 'package:flutter/material.dart';
import 'book_widget.dart';

class BookstorePage extends StatelessWidget {
  const BookstorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mid-term Book Store'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Book(
          imageUrl: 'assets/LOR.jpg',
          title: 'The Lord of the Rings',
          author: 'John Ronald Reuel',
          price: 'Rs.1600.00',
        ),
      ),
    );
  }
}
