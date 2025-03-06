import 'package:flutter/material.dart';
import 'package:remiksweb/pages/footer.dart';
import 'package:remiksweb/pages/intro_page.dart';
import 'package:remiksweb/pages/second_page.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IntroPage(),
            SecondPage(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
