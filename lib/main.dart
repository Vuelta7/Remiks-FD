import 'package:flutter/material.dart';
import 'package:remiksweb/Pages/intro_page.dart';
import 'package:remiksweb/pages/footer.dart';
import 'package:remiksweb/pages/product_page.dart';
import 'package:remiksweb/pages/vision_page.dart';
import 'package:remiksweb/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        '/home': (context) => const HomeMain(),
      },
    );
  }
}

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroPage(),
            ProductPage(),
            VisionPage(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
