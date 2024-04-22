import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final imageurl = [
    "https://cdn.britannica.com/88/194588-050-967E8D17/flowers.jpg",
    "https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg",
    "https://cdn.britannica.com/88/194588-050-967E8D17/flowers.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CarouselSlider.builder(
        options: CarouselOptions(height: 400),
        itemCount: imageurl.length,
        itemBuilder: (context, index, realIndex) {
          final imagUrls = imageurl[index];
          return buildImage(imagUrls, index);
        },
      )),
    );
  }

  Widget buildImage(String imagUrls, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        color: Colors.grey,
        child: Image.network(
          "https://cdn.britannica.com/88/194588-050-967E8D17/flowers.jpg",

          ///  imagUrls,
          fit: BoxFit.cover,
        ),
      );
}
