import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/Detail/detail_screen.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final Product product;

  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
        Navigator.push(context,
         MaterialPageRoute(
          builder: (context) => DetailScreen(product: product),
          ),
          );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                // Using Expanded to ensure the image occupies flexible space
                Expanded(
                  child: Center(
                    child: Image.asset(
                      product.image,
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Flexible(
                    child: Text(
                      product.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis, // To handle long text
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\LKR ${product.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(width: 10), // Add spacing between price and color indicators
                    ...List.generate(
                      product.colors.length,
                      (index) => Container(
                        width: 18,
                        height: 18,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: product.colors[index],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
