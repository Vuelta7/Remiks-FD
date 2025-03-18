import 'package:flutter/material.dart';
import 'package:remiksweb/pages/home%20page/home_header.dart';
import 'package:remiksweb/pages/home%20page/home_product.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';

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
              ProductSection(),
              RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
