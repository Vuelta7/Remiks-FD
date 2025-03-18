import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/pages/about%20us%20page/about_us_main.dart';
import 'package:remiksweb/pages/contact%20page.dart/contact_main.dart';
import 'package:remiksweb/pages/home%20page/home_main.dart';
import 'package:remiksweb/pages/product%20page/product_main.dart';
import 'package:remiksweb/splash_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final GoRouter _router = GoRouter(
  routerNeglect: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => const ProductPage(),
    ),
    GoRoute(
      path: '/contacts',
      builder: (context, state) => const ContactsPage(),
    ),
    GoRoute(
      path: '/about-us',
      builder: (context, state) => const AboutUsMain(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router, // Use GoRouter
    );
  }
}
