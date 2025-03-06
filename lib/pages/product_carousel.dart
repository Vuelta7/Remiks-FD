import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/chicken_pastil.png',
      'name': 'Chicken Pastil',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
    {
      'image': 'assets/chili_garlic.png',
      'name': 'Chili Garlic',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
    {
      'image': 'assets/ginisang_alamang.png',
      'name': 'Ginisang Alamang',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
    {
      'image': 'assets/hot_sauce.png',
      'name': 'Hot Sauce',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
    {
      'image': 'assets/sawsaw_suka.png',
      'name': 'Saw Saw Suka',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
    {
      'image': 'assets/chili_shots.png',
      'name': 'Chili Shots',
      'description': 'Pogi ako',
      'price': '₱90',
      'bgColor': Colors.orange
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: CarouselSlider.builder(
        itemCount: products.length,
        options: CarouselOptions(
          height: 450,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          enableInfiniteScroll: true,
          viewportFraction: 0.6,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        itemBuilder: (context, index, realIndex) {
          bool isCentered = index == _currentIndex;
          return Container(
            width: 400,
            decoration: BoxDecoration(
              color:
                  isCentered ? products[index]['bgColor'] : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFDD45),
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  products[index]['image'],
                  width: 200,
                ),
                Text(
                  products[index]['name'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  products[index]['description'],
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  products[index]['price'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
