import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    title: "Headphones",
    description: "High-quality wireless headphones with noise cancellation.",
    image: "images/wireless2.jpeg",
    review: "4.5k Reviews",
    seller: "SoundMax Store",
    price: 99.22,
    colors: [Colors.black, Colors.blue],
    category: "Electronics",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Mouse",
    description: "Ergonomic wireless mouse with long battery life.",
    image: "images/wireless.png",
    review: "2.1k Reviews",
    seller: "TechZone",
    price: 29.99,
    colors: [Colors.grey, Colors.black],
    category: "Accessories",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Bluetooth Speaker",
    description:
        "Portable wireless speaker with deep bass and 12-hour battery.",
    image: "images/wireless.png",
    review: "3.8k Reviews",
    seller: "MusicBox",
    price: 49.99,
    colors: [Colors.red, Colors.black, Colors.blue],
    category: "Audio",
    rate: 4.6,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description: "Fast charging pad compatible with all Qi-enabled devices.",
    image: "images/jacket.jpeg",
    review: "1.2k Reviews",
    seller: "ChargeHub",
    price: 19.99,
    colors: [Colors.black, Colors.white],
    category: "Gadgets",
    rate: 4.4,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description: "Fast charging pad compatible with all Qi-enabled devices.",
    image: "images/jacket.jpeg",
    review: "1.2k Reviews",
    seller: "ChargeHub",
    price: 19.99,
    colors: [Colors.black, Colors.white],
    category: "Gadgets",
    rate: 4.4,
    quantity: 1,
  ),
];
