import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/product_carousel.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Column(
        children: [
          RemiksText(
            fontSize: 50,
            text: 'OUR PRODUCTS',
            font: 'Bitshow',
            color: Colors.orange,
          ),
          ProductCarousel(),
        ],
      ),
    );
  }
}
