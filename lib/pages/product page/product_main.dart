import 'package:flutter/material.dart';
import 'package:remiksweb/pages/product%20page/product_grid.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
              image: NetworkImage('assets/background_intro_raw.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const RemiksNavbar(),
              RemiksText(
                fontSize: isMobileWeb(context) ? 30 : 80,
                text: 'Our Products!',
                font: 'Bitshow',
                color: Colors.white,
                offset: Offset(3, 3),
              ),
              const ProductGrid(),
              RemiksText(
                fontSize: 30,
                text: 'Sarap up to the last drop!',
                font: 'Bitshow',
                color: Colors.white,
              ),
              const RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
