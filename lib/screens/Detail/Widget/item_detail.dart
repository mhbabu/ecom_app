import 'package:ecom_app/constants.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),

        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                // for ratings
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kPrimaryColor,
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.white, size: 15),
                          const SizedBox(width: 3),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Seller: ",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: product.seller,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          product.review,
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    );
  }
}
