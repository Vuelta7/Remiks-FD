import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
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
            color: isCentered ? Colors.orange : Colors.transparent,
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
                    width: 220,
                  ),
                  RemiksText(
                    fontSize: 30,
                    text: products[index]['name'],
                    font: 'Soft',
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  RemiksText(
                    fontSize: 15,
                    text: products[index]['description'],
                    font: 'Hey',
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  RemiksText(
                    fontSize: 30,
                    text: products[index]['price'],
                    font: 'Soft',
                    color: Colors.red,
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
