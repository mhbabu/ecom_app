class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "images/shoe.jpeg"),
  Category(title: "Beauty", image: "images/beauty.jpeg"),
  Category(title: "Women's Fashion", image: "images/image1.png"),
  Category(title: "Jewelry", image: "images/jewelry.jpeg"),
  Category(title: "Shoes", image: "images/beauty.jpeg"),
  Category(title: "Men's Fashion", image: "images/men.jpeg"),
];
