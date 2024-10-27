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
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

// Sample product list
final List<Product> allProducts = [
  Product(
    title: "2 Point Adapter",
    review: "230 reviewers",
    description: "Compact and reliable 2-point adapter for all your charging needs.",
    image: "images/allProducts/adapter1.png",
    price: 1947,
    colors: [Colors.white, Colors.black],
    seller: "Tech Essentials",
    category: "Electronics",
    rate: 4.5,
    quantity: 150,
  ),
  Product(
    title: "3 Point Adapter",
    review: "100 reviewers",
    description: "Durable 3-point adapter compatible with a variety of devices.",
    image: "images/allProducts/adapter2.png",
    price: 2597,
    colors: [Colors.white, Colors.grey],
    seller: "Global Connectors",
    category: "Electronics",
    rate: 4.4,
    quantity: 200,
  ),
    Product(
      title: "iPod White",
       review: "80 reviewers",
        description: "Apple iPod with 32GB storage, perfect for music lovers.",
         image: "images/allProducts/airpod2.png",
          price: 64997,
           colors: 
           [
            Colors.white,
           ],
            seller: "Apple Store",
             category: "Music Devices",
              rate: 4.7,
               quantity: 80),
    Product(title: "AirPod Black",
     review: "50 reviewers",
      description:"Sleek AirPods with rich sound, offering seamless connectivity.",
       image: "images/allProducts/airpod1.png",
        price: 48747,
         colors: [
          Colors.black],
          seller: "AppleStore",
           category: "Earbuds",
            rate: 4.8,
             quantity: 100),
    Product(
  title: "3 in 1 Cables",
  review: "30 reviewers",
  description: "Multi-purpose 3-in-1 charging cable, USB, Lightning, and Type-C support.",
  image: "images/allProducts/charger1.png",
  price: 3247,
  colors: [Colors.black, Colors.white],
  seller: "Cable Solutions",
  category: "Accessories",
  rate: 4.6,
  quantity: 300
),

Product(
  title: "C Type Charger",
  review: "150 reviewers",
  description: "Fast-charging USB-C charger for smartphones and tablets.",
  image: "images/allProducts/charger2.png",
  price: 4222,
  colors: [Colors.white, Colors.black],
  seller: "ChargePro",
  category: "Accessories",
  rate: 4.6,
  quantity: 220
),

Product(
  title: "Earphone White",
  review: "67 reviewers",
  description: "High-quality wired earphones with clear sound.",
  image: "images/allProducts/earphones.png",
  price: 6497,
  colors: [Colors.white],
  seller: "SoundWorld",
  category: "Earphones",
  rate: 4.3,
  quantity: 120
),

Product(
  title: "Earphone Black",
  review: "150 reviewers",
  description: "Comfortable and noise-canceling wired earphones.",
  image: "images/allProducts/earphones1.png",
  price: 6497,
  colors: [Colors.black],
  seller: "SoundWorld",
  category: "Earphones",
  rate: 4.4,
  quantity: 130
),

Product(
  title: "Headset Black",
  review: "100 reviewers",
  description: "Over-ear black headset with noise isolation and superior sound.",
  image: "images/allProducts/earphones2.png",
  price: 19497,
  colors: [Colors.black],
  seller: "AudioMax",
  category: "Headsets",
  rate: 4.7,
  quantity: 50
),

Product(
  title: "Headset Blue",
  review: "70 reviewers",
  description: "Stylish over-ear blue headset, perfect for gaming and music.",
  image: "images/allProducts/earphones3.png",
  price: 19497,
  colors: [Colors.blue],
  seller: "AudioMax",
  category: "Headsets",
  rate: 4.5,
  quantity: 45
),

Product(
  title: "iPhone 14 Black",
  review: "30 reviewers",
  description: "Latest iPhone 14 with 128GB storage and A15 Bionic chip.",
  image: "images/allProducts/iphone.png",
  price: 324997,
  colors: [Colors.black],
  seller: "Apple Store",
  category: "Smartphones",
  rate: 4.9,
  quantity: 40
),

Product(
  title: "Oppo Hasselblad",
  review: "20 reviewers",
  description: "Oppo smartphone with Hasselblad camera technology for exceptional photography.",
  image: "images/allProducts/oppo1.png",
  price: 259997,
  colors: [const Color.fromARGB(255, 197, 135, 235), Colors.green],
  seller: "Oppo Official",
  category: "Smartphones",
  rate: 4.8,
  quantity: 60
),

Product(
  title: "Samsung S22",
  review: "400 reviewers",
  description: "Flagship Samsung Galaxy S22 with 128GB storage and advanced camera system.",
  image: "images/allProducts/samsung1.png",
  price: 276247,
  colors: [Colors.black, Colors.white],
  seller: "Samsung Official",
  category: "Smartphones",
  rate: 4.7,
  quantity: 55
),

Product(
  title: "Redmi A3",
  review: "66 reviewers",
  description: "Budget-friendly Redmi A3 smartphone with 64GB storage.",
  image: "images/allProducts/redmi.png",
  price: 64997,
  colors: [Colors.blue, Colors.black],
  seller: "Xiaomi Store",
  category: "Smartphones",
  rate: 4.4,
  quantity: 150
),

Product(
  title: "Samsung A5",
  review: "69 reviewers",
  description: "Mid-range Samsung Galaxy A5 with 64GB storage and great battery life.",
  image: "images/allProducts/samsung.png",
  price: 97497,
  colors: [Colors.black,
   Colors.grey],
  seller: "Samsung Official",
  category: "Smartphones",
  rate: 4.5,
  quantity: 100
),

Product(
  title: "Oppo",
  review: "34 reviewers",
  description: "Latest Oppo smartphone with cutting-edge features and sleek design.",
  image: "images/allProducts/oppo.png",
  price: 194997,
  colors: [Colors.white, Colors.black],
  seller: "Oppo Official",
  category: "Smartphones",
  rate: 4.6,
  quantity: 80
),
            
];
final List<Product> headset = [
Product(
      title: "iPod White",
       review: "80 reviewers",
        description: "Apple iPod with 32GB storage, perfect for music lovers.",
         image: "images/headset/airpod2.png",
          price: 64997,
           colors: 
           [
            Colors.white,
           ],
            seller: "Apple Store",
             category: "Music Devices",
              rate: 4.7,
               quantity: 80),
    Product(title: "AirPod Black",
     review: "66 reviewers",
      description:"Sleek AirPods with rich sound, offering seamless connectivity.",
       image: "images/headset/airpod1.png",
        price: 48747,
         colors: [
          Colors.black],
          seller: "AppleStore",
           category: "Earbuds",
            rate: 4.8,
             quantity: 100),
             Product(
  title: "Earphone White",
  review: "40 reviewers",
  description: "High-quality wired earphones with clear sound.",
  image: "images/headset/earphones.png",
  price: 6497,
  colors: [Colors.white],
  seller: "SoundWorld",
  category: "Earphones",
  rate: 4.3,
  quantity: 120
),

Product(
  title: "Earphone Black",
  review: "70 reviewers",
  description: "Comfortable and noise-canceling wired earphones.",
  image: "images/headset/earphones1.png",
  price: 6497,
  colors: [Colors.black],
  seller: "SoundWorld",
  category: "Earphones",
  rate: 4.4,
  quantity: 130
),

Product(
  title: "Headset Black",
  review: "123 reviewers",
  description: "Over-ear black headset with noise isolation and superior sound.",
  image: "images/headset/earphones2.png",
  price: 19497,
  colors: [Colors.black],
  seller: "AudioMax",
  category: "Headsets",
  rate: 4.7,
  quantity: 50
),

Product(
  title: "Headset Blue",
  review: "65 reviewers",
  description: "Stylish over-ear blue headset, perfect for gaming and music.",
  image: "images/headset/earphones3.png",
  price: 19497,
  colors: [Colors.blue],
  seller: "AudioMax",
  category: "Headsets",
  rate: 4.5,
  quantity: 45
),
];
final List<Product> phone = [
Product(
  title: "iPhone 14 Black",
  review: "300 reviewers",
  description: "Latest iPhone 14 with 128GB storage and A15 Bionic chip.",
  image: "images/phone/iphone.png",
  price: 324997,
  colors: [Colors.black],
  seller: "Apple Store",
  category: "Smartphones",
  rate: 4.9,
  quantity: 40
),

Product(
  title: "Oppo Hasselblad",
  review: "210 reviewers",
  description: "Oppo smartphone with Hasselblad camera technology for exceptional photography.",
  image: "images/phone/oppo1.png",
  price: 259997,
  colors: [Colors.black, Colors.green],
  seller: "Oppo Official",
  category: "Smartphones",
  rate: 4.8,
  quantity: 60
),

Product(
  title: "Samsung S22",
  review: "16 reviewers",
  description: "Flagship Samsung Galaxy S22 with 128GB storage and advanced camera system.",
  image: "images/phone/samsung1.png",
  price: 276247,
  colors: [Colors.black, Colors.white],
  seller: "Samsung Official",
  category: "Smartphones",
  rate: 4.7,
  quantity: 55
),

Product(
  title: "Redmi A3",
  review: "66 reviewers",
  description: "Budget-friendly Redmi A3 smartphone with 64GB storage.",
  image: "images/phone/redmi.png",
  price: 64997,
  colors: [Colors.blue, Colors.black],
  seller: "Xiaomi Store",
  category: "Smartphones",
  rate: 4.4,
  quantity: 150
),

Product(
  title: "Samsung A5",
  review: "44 reviewers",
  description: "Mid-range Samsung Galaxy A5 with 64GB storage and great battery life.",
  image: "images/phone/samsung.png",
  price: 97497,
  colors: [Colors.black,
   Colors.grey],
  seller: "Samsung Official",
  category: "Smartphones",
  rate: 4.5,
  quantity: 100
),

Product(
  title: "Oppo",
  review: "60 reviewers",
  description: "Latest Oppo smartphone with cutting-edge features and sleek design.",
  image: "images/phone/oppo.png",
  price: 194997,
  colors: [Colors.white, Colors.black],
  seller: "Oppo Official",
  category: "Smartphones",
  rate: 4.6,
  quantity: 80
),
];
final List<Product> adapter = [
Product(
    title:"2 Point Adapter",
    review:"22 reviewers" , 
    description: 
    "Compact and reliable 2-point adapter for all your charging needs.", 
  image: "images/adapter/adapter1.png",
   price: 1947,
    colors: [
      Colors.white,
      Colors.black,
      ],
     seller: "Tech Essentials",
      category: "Electronics", 
      rate: 4.5,
      quantity: 150
    ),
    Product(
      title: "3 Point Adapter",
      review:"89 reviewers" ,
      description:
      "Durable 3-point adapter compatible with a variety of devices.",
      image:"images/adapter/adapter2.png",
       price: 2597,
         colors:[
          Colors.white,
          Colors.grey,
         ],
      seller: "Global Connectors",
       category: "Electronics",
       rate: 4.4,
       quantity: 200,
    ),
];
final List<Product> phonecase = [

];
final List<Product> charger = [
Product(
  title: "C Type Charger",
  review: "66 reviewers",
  description: "Fast-charging USB-C charger for smartphones and tablets.",
  image: "images/charger/charger2.png",
  price: 4222,
  colors: [Colors.white, Colors.black],
  seller: "ChargePro",
  category: "Accessories",
  rate: 4.6,
  quantity: 220
),
Product(
  title: "3 in 1 Cables",
  review: "70 reviewers",
  description: "Multi-purpose 3-in-1 charging cable, USB, Lightning, and Type-C support.",
  image: "images/charger/charger1.png",
  price: 3247,
  colors: [Colors.black, Colors.white],
  seller: "Cable Solutions",
  category: "Accessories",
  rate: 4.6,
  quantity: 300
),
];