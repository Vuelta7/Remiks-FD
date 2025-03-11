import 'package:flutter/material.dart';
import 'package:remiksweb/pages/home%20page/home_header.dart';
import 'package:remiksweb/pages/home%20page/home_product.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroSection(),
            ProductSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
