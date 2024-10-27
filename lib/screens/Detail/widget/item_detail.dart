import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product_model.dart';
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
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // For Rating and Review
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Rating Container
                      Container(
                        width: 55,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kprimaryColor,
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              product.rate.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8), // Space between rating and review
                      // Review Text
                      Expanded(
                        child: Text(
                          product.review,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "Seller: ",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: product.seller,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
