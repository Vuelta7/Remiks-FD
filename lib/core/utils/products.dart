import 'package:flutter/material.dart';

const List<Map<String, dynamic>> products = [
  {
    'image': 'assets/chicken_pastil.webp',
    'name': 'Chicken Pastil',
    'description':
        'authentic, flavorful shredded chicken cooked in rich spices, ready to enjoy anytime.',
    'price': '₱170',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/chili_garlic.webp',
    'name': 'Chili Garlic',
    'description':
        'spicy blend of garlic and chili for an irresistible kick to any dish.',
    'price': '₱110',
    'bgColor': Colors.orange,
    'link':
        'https://www.lazada.com.ph/products/remiks-chili-garlic-sauce-220-ml-i1545430908-s6556722765.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1545430908%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1545430908_PH%253Bprice%253A110%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A0%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25411%253Bitem_id%253A1545430908%253Bsku_id%253A6556722765%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=1.1E%202&priceCompare=skuId%3A6556722765%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A11000%3BdisplayPrice%3A11000%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=4.7317073170731705&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=41&sale=222&search=1&spm=a2o4l.store_product.list.0&stock=1'
  },
  {
    'image': 'assets/ginisang_alamang.webp',
    'name': 'Ginisang Alamang',
    'description':
        'A savory blend of fermented shrimp, perfect for dips, rice, and cooking.',
    'price': '₱90',
    'bgColor': Colors.orange,
    'link':
        'https://www.lazada.com.ph/products/remiks-sweet-nspicy-bagoong-220-ml-i1820968568-s7730727040.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1820968568%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1820968568_PH%253Bprice%253A95%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A3%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25412%253Bitem_id%253A1820968568%253Bsku_id%253A7730727040%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=95&priceCompare=skuId%3A7730727040%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A9500%3BdisplayPrice%3A9500%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=5.0&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=2&sale=15&search=1&spm=a2o4l.store_product.list.3&stock=1'
  },
  {
    'image': 'assets/hot_sauce.png',
    'name': 'Chili Carrot Sauce',
    'description':
        'A hot sauce with perfect balance of heat and taste for chili lovers.',
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
  {
    'image': 'assets/chicken_oil.webp',
    'name': 'Chicken Oil',
    'description': 'The ultimate way to enjoy spicy heat in a single shot.',
    'price': '₱70',
    'bgColor': Colors.orange,
    'link':
        'https://www.lazada.com.ph/products/remiks-chicken-oil-150-ml-i1820898994-s7730620442.html?c=&channelLpJumpArgs=&clickTrackInfo=query%253A%253Bnid%253A1820898994%253Bsrc%253AlazadaInShopSrp%253Brn%253A42ed5ceadb3dd410cede07d0cd26f74a%253Bregion%253Aph%253Bsku%253A1820898994_PH%253Bprice%253A95%253Bclient%253Adesktop%253Bsupplier_id%253A500169201182%253Bbiz_source%253Ah5_internal%253Bslot%253A2%253Butlog_bucket_id%253A470687%253Basc_category_id%253A25412%253Bitem_id%253A1820898994%253Bsku_id%253A7730620442%253Bshop_id%253A1867516%253BtemplateInfo%253A107881_D_E%2523-1_A3_C%2523&freeshipping=1&fs_ab=2&fuse_fs=&lang=en&location=Bulacan&price=95&priceCompare=skuId%3A7730620442%3Bsource%3Alazada-search-voucher-in-shop%3Bsn%3A42ed5ceadb3dd410cede07d0cd26f74a%3BoriginPrice%3A9500%3BdisplayPrice%3A9500%3BsinglePromotionId%3A-1%3BsingleToolCode%3A-1%3BvoucherPricePlugin%3A0%3Btimestamp%3A1743792861005&ratingscore=5.0&request_id=42ed5ceadb3dd410cede07d0cd26f74a&review=1&sale=8&search=1&spm=a2o4l.store_product.list.2&stock=1'
  },
  {
    'image': 'assets/chicharap.webp',
    'name': 'Chicharap',
    'description':
        'your childhood prawn cracker perfect for picnics & snacks combine it with our Remiks Sawsaw Suka!',
    'longPrice': '₱30 each\n3 for ₱100',
    'price': '₱30',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/turon.webp',
    'name': 'Turones',
    'description':
        'a sweet & savory snack with peanuts inside. perfect for coffee time & meryenda.',
    'longPrice': '₱30 each\n3 for ₱100',
    'price': '₱30',
    'bgColor': Colors.orange,
    'link': null
  },
  {
    'image': 'assets/sagada_trans.webp',
    'name': 'Sagada',
    'description':
        'A rich and aromatic coffee blend from the highlands of Sagada.',
    'longDescription':
        'Sagada Pure Arabica Premium Beans is Medium Roast\nElevate your daily brew with the rich heritage of Sagada. These 100% Pure Arabica beans are cultivated at high altitudes in the cool climate of the Mountain Province, where volcanic soil and mountain mists produce coffee of exceptional quality and flavor.\n\nOur medium roast brings out a harmonious balance of smooth body and vibrant acidity, with tasting notes of chocolate, caramel, and a hint of citrus. Handpicked and carefully processed by local farmers, this coffee reflects the soulful tradition and craftsmanship of the Cordilleras.\n\nPerfect for pour-over, drip, or French press, each cup offers a warm, comforting taste of the mountains—bold, aromatic, and unmistakably Filipino.\n\nFlavor Notes: Chocolate · Caramel · Citrus \nRoast Level: Medium \nOrigin: Sagada, Mountain Province, Philippines \nProcess: Handpicked · Washed · Sun-dried',
    'longPrice': '(10s) - ₱195\n10s individual pack\n-₱220\nper pc - ₱25',
    'price': '₱195',
    'bgColor': Colors.orange,
    'tag': 'Medium Roast',
    'link': null
  },
  {
    'image': 'assets/barako_trans.webp',
    'name': 'Barako',
    'description':
        'A strong and bold coffee blend from Batangas and Cavite, perfect for coffee lovers.',
    'longDescription':
        'Barako Pure Liberica is Dark Roast\nUnmistakably bold. Unapologetically Filipino.\n\nBarako is more than just coffee—it\'s a legacy. Grown in the volcanic soils of Batangas and Cavite, these 100% Pure Liberica beans are known for their intense aroma, full body, and robust flavor. Our dark roast enhances its signature kick, with deep notes of molasses, dark cocoa, and a hint of spice, perfect for those who crave a powerful, no-nonsense brew.\n\nHandpicked and traditionally processed, Barako is the heart and soul of Philippine coffee culture—strong, earthy, and deeply rooted in history.\n\nFlavor Notes: Molasses · Dark Cocoa · Earthy Spice\nRoast Level: Dark\nOrigin: Batangas & Cavite, Philippines\nProcess: Handpicked · Washed · Sun-dried',
    'longPrice': '(10s) - ₱190\n10s individual pack\n-₱220\nper pc - ₱25',
    'price': '₱190',
    'bgColor': Colors.orange,
    'tag': 'Dark Roast',
    'link': null
  },
];
