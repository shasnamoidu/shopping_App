import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
   CategoryPage({super.key});

  final Category = [
    {'category': 'women', 'Image': 'assets/images/women.jpeg'},
    {'category': 'man', 'Image': 'assets/images/man.webp'},
    {'category': 'shoes', 'Image': 'assets/images/shoes.jpeg'},
    {'category': 'accessiories', 'Image': 'assets/images/accessories.png'},
    {'category': 'gadgets', 'Image': 'assets/images/gadgets.webp'},
    {'category': 'kids', 'Image': 'assets/images/kids.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(backgroundImage: AssetImage(Category[index].values.last,
            
            ),radius: 30,
            )
          ],
        ),
      );
    },
    itemCount: Category.length,
    );
  }
}