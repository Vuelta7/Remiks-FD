import 'package:flutter/material.dart';
import 'package:remiksweb/routes/intro_page.dart';

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
          ],
        ),
      ),
    );
  }
}
