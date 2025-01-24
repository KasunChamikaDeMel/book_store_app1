import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String price;

  const Book({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        children: [ const SizedBox(height: 20),
          Text( title, style: const TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal,), textAlign: TextAlign.center,),
          const SizedBox(height: 8),
          Text( author, style: const TextStyle( fontSize: 16, fontStyle: FontStyle.italic, color: Colors.grey, ), textAlign: TextAlign.center,),
          const SizedBox(height: 16),
          ClipRRect( borderRadius: BorderRadius.circular(8),
            child: Image.asset( imageUrl, height: 200, fit: BoxFit.cover,),),
          const SizedBox(height: 16),
          Text( price, style: const TextStyle( fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black,),),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Added $title to cart')),);
            },
            style: ElevatedButton.styleFrom( backgroundColor: Colors.teal, shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20),),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
            child: const Text( 'Add to cart', style: TextStyle( fontSize: 16, color: Colors.white,),),
          ),
        ],
      ),
    );
  }
}
