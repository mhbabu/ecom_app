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
    description:
        "Lorem ipsum is a placeholder text used in design and printing to fill the space where real content will eventually go, allowing designers to focus on the visual layout rather than the text itself. The phrase is derived from a jumbled, nonsensical Latin text from a 15th-century type specimen book, which was itself a distorted version of a 45 B.C. work by Cicero. high-quality wireless headphones with noise cancellation.",
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
    description:
        "Lorem ipsum is a placeholder text used in design and printing to fill the space where real content will eventually go, allowing designers to focus on the visual layout rather than the text itself. The phrase is derived from a jumbled, nonsensical Latin text from a 15th-century type specimen book, which was itself a distorted version of a 45 B.C. work by Cicero. high-quality wireless headphones with noise cancellation.",

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
        "Lorem ipsum is a placeholder text used in design and printing to fill the space where real content will eventually go, allowing designers to focus on the visual layout rather than the text itself. The phrase is derived from a jumbled, nonsensical Latin text from a 15th-century type specimen book, which was itself a distorted version of a 45 B.C. work by Cicero. high-quality wireless headphones with noise cancellation.",

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
    description:
        "Lorem ipsum is a placeholder text used in design and printing to fill the space where real content will eventually go, allowing designers to focus on the visual layout rather than the text itself. The phrase is derived from a jumbled, nonsensical Latin text from a 15th-century type specimen book, which was itself a distorted version of a 45 B.C. work by Cicero. high-quality wireless headphones with noise cancellation.",

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
    description:
        "Lorem ipsum is a placeholder text used in design and printing to fill the space where real content will eventually go, allowing designers to focus on the visual layout rather than the text itself. The phrase is derived from a jumbled, nonsensical Latin text from a 15th-century type specimen book, which was itself a distorted version of a 45 B.C. work by Cicero. high-quality wireless headphones with noise cancellation.",
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
