import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 440,
    height: 1000,
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
        color:Colors.orangeAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
        ),
    ),
    child: Stack(
        children: [
            Positioned(
                left: 144,
                top: 144,
                child: Container(
                    width: 155,
                    height: 155,
                    decoration: ShapeDecoration(
                        image: const DecorationImage(
                            image:AssetImage("images/logo.png") ,
                            fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(300),
                        ),
                        shadows: const [
                            BoxShadow(
                                color: Color(0x4C000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                            ),BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 12,
                                offset: Offset(0, 8),
                                spreadRadius: 6,
                            )
                        ],
                    ),
                ),
            ),
            const Positioned(
                left: 3,
                top: 359,
                child: SizedBox(
                    width: 400,
                    height: 200,
                    child: Text(
                        'Welcome to our websites',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 30,
                            fontFamily: 'Katibeh',
                            fontWeight: FontWeight.w400,
                            height: 0,
                        ),
                    ),
                ),
            ),
            const Positioned(
                left: 56,
                top: 439,
                child: SizedBox(
                    width: 300,
                    height: 200,
                    child: Text(
                        'Welcome to our site, your one-stop destination for the latest mobiles and accessories. Explore our wide range of products and enjoy a seamless shopping experience!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 18,
                            fontFamily: 'Noto Serif',
                            fontWeight: FontWeight.w300,
                            height: 1.5
                            ,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 80,
                top: 650,
                
                child: Container(
                    width: 244,
                    padding: const EdgeInsets.all(20),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: kprimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: const [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                    
                    child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                'Welcome',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    height: 0.06,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
    ),
);
  }
}