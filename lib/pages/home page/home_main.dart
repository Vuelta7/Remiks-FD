import 'package:flutter/material.dart';
import 'package:remiksweb/pages/home%20page/home_header.dart';
import 'package:remiksweb/widgets/product_carousel.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
            image: AssetImage('assets/background_intro_raw.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              IntroSection(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  children: [
                    RemiksText(
                      fontSize: 50,
                      text: 'OUR PRODUCTS',
                      font: 'Bitshow',
                      color: Colors.white,
                    ),
                    ProductCarousel(),
                  ],
                ),
              ),
              RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
