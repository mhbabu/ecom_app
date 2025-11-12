import 'package:ecom_app/constants.dart';
import 'package:ecom_app/models/product.dart';
import 'package:ecom_app/screens/Detail/Widget/description.dart';
import 'package:ecom_app/screens/Detail/Widget/item_detail.dart';
import 'package:ecom_app/screens/Detail/detail_appbar.dart';
import 'package:ecom_app/screens/Detail/Widget/image_slider.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            DetailAppBar(), //for back button share and favorite
            MyImageSlider(
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product name, price, ratings and seller
                  ItemDetails(product: widget.product),
                  const SizedBox(height: 20),
                  Text(
                    'Colors',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentColor == index
                                ? Colors.white
                                : widget.product.colors[index],
                            border: currentColor == index
                                ? Border.all(
                                    color: widget.product.colors[index],
                                  )
                                : null,
                          ),
                          padding: currentColor == index
                              ? const EdgeInsets.all(2)
                              : null,
                          margin: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 30,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: widget.product.colors[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //for description
                  Description(text: widget.product.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
