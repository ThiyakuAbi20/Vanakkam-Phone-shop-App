import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        Container(
            decoration: const BoxDecoration(
              color: kcontentColor, 
              shape: BoxShape.circle, 
            ),
            padding: const EdgeInsets.all(10), 
            child: ClipOval(
              child: Image.asset(
                "images/logo.png", 
                height: 50,
                width: 50, 
                fit: BoxFit.cover, 
              ),
            ),
          ),
          IconButton(
          style:IconButton.styleFrom(
            backgroundColor:kcontentColor,
            padding: const EdgeInsets.all(20),
             ),
         onPressed:(){},
         iconSize: 30,
         icon:const Icon(Icons.notifications_outlined) ,
          ),
          ],
          );
  }
}