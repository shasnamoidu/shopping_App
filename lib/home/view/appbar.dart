import 'package:flutter/material.dart';
import 'package:shopping/home/view/category.dart';
import 'package:shopping/home/view/drawer.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({super.key});

  @override
  State<AppbarPage> createState() => _HomePageState();
}

class _HomePageState extends State<AppbarPage> {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
        
        backgroundColor: Colors.grey[100],
        
        title: Center(
            child: Image.asset(
          'assets/images/shopLogo.png',
          width: 100,
          height: 100,
        )),
        
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      );
      
  }
}
