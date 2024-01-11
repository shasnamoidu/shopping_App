

import 'package:flutter/material.dart';
import 'package:shopping/home/model/productmodel.dart';
import 'package:shopping/home/view/appbar.dart';
import 'package:shopping/home/view/category.dart';
import 'package:shopping/home/view/drawer.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<Products> products = [
    Products(
        title: 'Iphone 12',
        description: 'Iphone 11 pro',
        price: 12000,
        isWishlisted: true,
        picture: "assets/images/women.jpeg"),
    Products(
        title: 'Iphone 12',
        description: 'Iphone 11 pro',
        price: 12000,
        isWishlisted: true,
        picture: "assets/images/accessories.png"),
    Products(
        title: 'Iphone 12',
        description: 'Iphone 11 pro',
        price: 12000,
        isWishlisted: true,
        picture: "assets/images/accessories.png"),
    Products(
        title: 'Iphone 12',
        description: 'Iphone 11 pro',
        price: 12000,
        isWishlisted: true,
        picture: "assets/images/accessories.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppbarPage()),
      body: Column(
        children: [
          Container(
            height: 80,
            child: Expanded(
              child: CategoryPage(),
            ),
          ),
          Image.asset(
            'assets/images/Ad.jpg',
            width: 600,
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 0,
                childAspectRatio: 0.5),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 2,
                margin: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      products[index].picture,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            products[index].description,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$${products[index].price}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                
                ),
              
              );
            },
            itemCount: products.length,
          )
          )
        ],
      ),
    );
  }
}
