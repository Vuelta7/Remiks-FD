import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

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
      'description':
          'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem ',
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
      'description':
          'Pogi ako Pogi akoPogi akoPogi akoPogi akoPogi akoPogi akoPogi akoPogi akoPogi ako',
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

  void _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentIndex = index;
    });
  }

  CarouselOptions _buildCarouselOptions(BuildContext context) {
    return CarouselOptions(
      height: 450,
      enlargeCenterPage: true,
      autoPlay: true,
      autoPlayInterval:
          isMobileWeb(context) ? Duration(seconds: 1) : Duration(seconds: 3),
      enableInfiniteScroll: true,
      viewportFraction: isMobileWeb(context) ? 0.6 : 0.3,
      onPageChanged: _onPageChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: products.length,
      options: _buildCarouselOptions(context),
      itemBuilder: (context, index, realIndex) {
        bool isCentered = index == _currentIndex;
        return Container(
          width: 400,
          decoration: BoxDecoration(
            color: isCentered ? products[index]['bgColor'] : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFFFDD45),
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Soft'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    products[index]['description'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Hey',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    products[index]['price'],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
