import 'package:e_commerce/models/category.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/screens/Home/Widget/home_app_bar.dart';
import 'package:e_commerce/screens/Home/Widget/image_slider.dart';
import 'package:e_commerce/screens/Home/Widget/product_cart.dart';
import 'package:e_commerce/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int currentSlide =0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories =[
      allProducts,
      adapter,
      phone,
      headset,
      phonecase,
      charger];
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:35),
            //for customer appbar
            const CustomAppBar(),
            const SizedBox(height: 20),
            //for search bar
            const MySearchBAR(),
            const SizedBox(height: 20),
            //for slider
            ImageSlider(
            currentSlide:currentSlide ,
            onChange: (value){
              setState(() {
              currentSlide = value;
            },);},),
           const SizedBox(height: 20),
           //for category selection
           Categories(),
           const Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text(
                "Special For You",
                style:TextStyle(
                  fontSize:25,
                  fontWeight:FontWeight.w800,
                  )
                  ,),
                  Text(
                    "See all",
                    style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                      ),
                      ),

                    //SizedBox(height: 10,),  
                  ],
                  ),
                  //for shopping items
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:0.78,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20
                      ),
                      itemCount: selectedCategories[selectedIndex].length,
                      itemBuilder: (context, index){
                        return ProductCart(
                          product: selectedCategories[selectedIndex][index],
                        );
                      }
                  ),
          ],
          ),
          ),
      ),
    );
  }
  SizedBox Categories() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selectedIndex == index
                    ?Colors.orangeAccent
                    : Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(categories[index].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    categories[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

