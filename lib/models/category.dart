class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}
final List<Category> categories= [
  Category(
    title:"All",
    image: "images/all.png",
    ),
    Category(
    title:"Adapter",
    image: "images/adapter1.png",
    ),
    Category(
    title:"Phone",
    image: "images/oppo.png",
    ),
    Category(
    title:"Headset",
    image: "images/earphones2.png",
    ),
    Category(
    title:"Phonecase",
    image: "images/phone3.png",
    ),
    Category(
    title:"Charger",
    image: "images/charger2.png",
    ),
];