import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/widgets/splash_page.dart';
import 'package:remiksweb/page/contacts/contact_main.dart';
import 'package:remiksweb/page/contacts/widget/location_page.dart';
import 'package:remiksweb/page/home/home_main.dart';
import 'package:remiksweb/page/product/product_main.dart';

void main() {
  usePathUrlStrategy();
  // debugPaintSizeEnabled = true;
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
      path: '/location',
      builder: (context, state) => const LocationPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
// TODO: ADD coffee
// flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8080
