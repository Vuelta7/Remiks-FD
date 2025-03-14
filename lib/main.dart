import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remiksweb/pages/about%20us%20page/about_us_main.dart';
import 'package:remiksweb/pages/contact%20page.dart/contact_main.dart';
import 'package:remiksweb/pages/home%20page/home_main.dart';
import 'package:remiksweb/pages/loaction%20page/location_main.dart';
import 'package:remiksweb/pages/product%20page/product_main.dart';
import 'package:remiksweb/splash_page.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        '/Home': (context) => const HomePage(),
        '/Locations': (context) => const LocationPage(),
        '/Products': (context) => const ProductPage(),
        '/Contacts': (context) => const ContactsPage(),
        '/About Us': (context) => const AboutUsMain(),
      },
    );
  }
}
