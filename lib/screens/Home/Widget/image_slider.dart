import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 350,
        width: 350,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              PageView(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                onPageChanged: onChange,
                physics: const ClampingScrollPhysics(),
                children: [
                  Image.asset(
                    "images/slider1.jpeg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "images/slider2.jpeg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "images/slider3.jpeg",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0, // Center the Row within the Positioned widget
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3, // Change this to match the number of images
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: currentSlide == index ? 15 : 8, // Adjust width for active/inactive
                      height: 8,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            currentSlide == index ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}