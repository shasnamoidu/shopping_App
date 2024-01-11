import 'dart:convert';

import 'package:flutter/material.dart';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));


class Products{
  Products({
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.isWishlisted,
    @required this.picture,
  });

  dynamic  title;
  dynamic description;
  dynamic price;
  dynamic isWishlisted;
  dynamic picture;

  factory Products.fromJson(dynamic json) => Products(
        title: json["title"],
        description: json["description"],
        price: json["price"],
        isWishlisted: json["isWishlisted"],
        picture: json["picture"],
      );
}