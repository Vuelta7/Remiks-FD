import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

bool isMobileWeb(BuildContext context) {
  return kIsWeb && MediaQuery.of(context).size.width < 800;
}

Color getShade(Color color, int shade) {
  assert(shade >= 100 && shade <= 900 && shade % 100 == 0);
  final int r = color.red;
  final int g = color.green;
  final int b = color.blue;
  final double factor = (shade / 1000).clamp(0.0, 1.0);
  return Color.fromRGBO(
    (r * factor).toInt(),
    (g * factor).toInt(),
    (b * factor).toInt(),
    1,
  );
}

Color themeColor = const Color.fromARGB(255, 238, 32, 35);

final selectedPage = StateProvider<int>((ref) => 0);

const List<Map<String, dynamic>> products = [
  {
    'image': 'assets/chicken_pastil.png',
    'name': 'Chicken Pastil',
    'description':
        'authentic, flavorful shredded chicken cooked in rich spices, ready to enjoy anytime.',
    'price': '₱170',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/chili_garlic.png',
    'name': 'Chili Garlic',
    'description':
        'spicy blend of garlic and chili for an irresistible kick to any dish.',
    'price': '₱110',
    'bgColor': Colors.orange,
    'link':
        'https://www.lazada.com.ph/products/remiks-chili-garlic-sauce-220-ml-i1545430908-s6556722765.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1545430908%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1545430908_PH%253Bprice%253A110%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A0%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25411%253Bitem_id%253A1545430908%253Bsku_id%253A6556722765%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=1.1E%202&priceCompare=skuId%3A6556722765%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A11000%3BdisplayPrice%3A11000%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=4.7317073170731705&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=41&sale=222&search=1&spm=a2o4l.store_product.list.0&stock=1'
  },
  {
    'image': 'assets/ginisang_alamang.png',
    'name': 'Ginisang Alamang',
    'description':
        'A savory blend of fermented shrimp, perfect for dips, rice, and cooking.',
    'price': '₱90',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/hot_sauce.png',
    'name': 'Hot Sauce',
    'description': 'A perfect balance of heat and taste for chili lovers.',
    'price': '₱170',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/sawsaw_suka.png',
    'name': 'Saw Saw Suka',
    'description': 'A Filipino classic vinegar dip.',
    'price': '₱95',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/chili_shots.png',
    'name': 'Chili Shots',
    'description': 'The ultimate way to enjoy spicy heat in a single shot.',
    'price': '₱70',
    'bgColor': Colors.orange,
    'link':
        'https://www.lazada.com.ph/products/remiks-chili-shots-150-ml-i1820981632-s7730867135.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1820981632%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1820981632_PH%253Bprice%253A70%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A1%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25406%253Bitem_id%253A1820981632%253Bsku_id%253A7730867135%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=7E%201&priceCompare=skuId%3A7730867135%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A7000%3BdisplayPrice%3A7000%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=&sale=5&search=1&spm=a2o4l.store_product.list.1&stock=1'
  },
];

final locationProvider = FutureProvider<LatLng?>((ref) async {
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    return null;
  }

  Position position = await Geolocator.getCurrentPosition();
  return LatLng(position.latitude, position.longitude);
});
