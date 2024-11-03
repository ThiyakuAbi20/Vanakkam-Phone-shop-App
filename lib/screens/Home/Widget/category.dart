import 'package:e_commerce/models/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection:Axis.horizontal ,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap:(){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:selectedIndex == index
                ?Colors.orangeAccent
                : Colors.transparent,
              ),
              child: Column(children: [
                Container(
                  height:65,
                  width:65,
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(categories[index].image),fit:BoxFit.cover
                      ),
                      ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        categories[index].title,
                        style:const TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.bold, 
                          ),
                          ),
                      ],
                      ),
            ),
          );
      },
     
      ),
    );
  }
}