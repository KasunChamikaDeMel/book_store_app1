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
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), elevation: 3,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only( topLeft: Radius.circular(8), bottomLeft: Radius.circular(8),),
            child: Image.asset( imageUrl, height: 120, width: 90, fit: BoxFit.cover,),),
          const SizedBox(width: 10),
          Expanded(
            child: Padding( padding: const EdgeInsets.all(8.0), child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( title, style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold, ),),
                  const SizedBox(height: 5),
                  Text( author, style: const TextStyle( fontSize: 14, color: Colors.grey,),),
                  const SizedBox(height: 5),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text( price, style: const TextStyle( fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green,),),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Purchased $title')),);
                        },
                        child: const Text('Add to Cart'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class BookstorePage extends StatelessWidget {
  const BookstorePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( title: const Text('Mid-term Book Store'), centerTitle: true,),
      body: ListView( padding: const EdgeInsets.all(10),
        children: const [
          Book(
            imageUrl: 'assets/LOR.jpg',
            title: 'The Lord of the Rings',
            author: 'John Ronald Reuel',
            price: 'Rs.1600.00',
          ),
          Book(
            imageUrl: 'assets/siege.jpg',
            title: 'The Siege',
            author: 'Helen Dunmore',
            price: 'Rs.1400.00',
          ),
          Book(
            imageUrl: 'assets/light.jpg',
            title: 'Light',
            author: 'M John Harrison',
            price: 'Rs.1400.00',
          ),
        ],
      ),
    );
  }
}
