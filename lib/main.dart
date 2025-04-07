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
// flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8080
// bagoong: https://www.lazada.com.ph/products/remiks-sweet-nspicy-bagoong-220-ml-i1820968568-s7730727040.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1820968568%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1820968568_PH%253Bprice%253A95%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A3%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25412%253Bitem_id%253A1820968568%253Bsku_id%253A7730727040%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=95&priceCompare=skuId%3A7730727040%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A9500%3BdisplayPrice%3A9500%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=5.0&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=2&sale=15&search=1&spm=a2o4l.store_product.list.3&stock=1
// chicken oi: https://www.lazada.com.ph/products/remiks-chicken-oil-150-ml-i1820898994-s7730620442.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1820898994%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1820898994_PH%253Bprice%253A95%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A2%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25412%253Bitem_id%253A1820898994%253Bsku_id%253A7730620442%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=95&priceCompare=skuId%3A7730620442%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A9500%3BdisplayPrice%3A9500%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=5.0&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=1&sale=8&search=1&spm=a2o4l.store_product.list.2&stock=1
