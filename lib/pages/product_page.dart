import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/product_carousel.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Column(
        children: [
          Text(
            'Our Products',
            style: TextStyle(fontFamily: 'Bitshow'),
          ),
          ProductCarousel(),
        ],
      ),
    );
  }
}
