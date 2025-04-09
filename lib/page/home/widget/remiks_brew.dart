import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductShowcase extends StatefulWidget {
  const NewProductShowcase({super.key});

  @override
  State<NewProductShowcase> createState() => _NewProductShowcaseState();
}

class _NewProductShowcaseState extends State<NewProductShowcase> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  final List<Map<String, dynamic>> _products = [
    {
      'image': 'assets/barako_view.webp',
      'name': 'Barako',
      'description':
          'A strong and bold coffee blend from Batangas and Cavite, perfect for coffee lovers.',
      'price': '₱190',
      'tag': 'Dark Roast',
    },
    {
      'image': 'assets/sagada_trans.webp',
      'name': 'Sagada',
      'description':
          'A rich and aromatic coffee blend from the highlands of Sagada.',
      'price': '₱195',
      'tag': 'Medium Roast',
    },
    {
      'image': 'assets/barako.webp',
      'name': 'Barako',
      'description':
          'A strong and bold coffee blend from Batangas and Cavite, perfect for coffee lovers.',
      'price': '₱190',
      'tag': 'Dark Roast',
    },
    {
      'image': 'assets/sagada.webp',
      'name': 'Sagada',
      'description':
          'A rich and aromatic coffee blend from the highlands of Sagada.',
      'price': '₱195',
      'tag': 'Medium Roast',
    },
    {
      'image': 'assets/barako_trans.webp',
      'name': 'Barako',
      'description':
          'A strong and bold coffee blend from Batangas and Cavite, perfect for coffee lovers.',
      'price': '₱190',
      'tag': 'Dark Roast',
    },
    {
      'image': 'assets/sagada_view.webp',
      'name': 'Sagada',
      'description':
          'A rich and aromatic coffee blend from the highlands of Sagada.',
      'price': '₱195',
      'tag': 'Medium Roast',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F3EF),
        image: DecorationImage(
          image: const AssetImage('assets/images/coffee_pattern.png'),
          opacity: 0.05,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/remiks_brew.webp',
                  height: 100,
                ),
                const SizedBox(width: 20),
                Text(
                  'Discover Remiks Brew',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Handcrafted coffee for connoisseurs',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.brown[700],
                    height: 1.5,
                  ),
                )
              ],
            ),
          ),
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
              height: 600,
              viewportFraction: _isSmallScreen(context) ? 0.8 : 0.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
            ),
            items: _products.map((product) {
              return Builder(
                builder: (BuildContext context) {
                  return _buildProductCard(context, product);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, Map<String, dynamic> product) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width *
            (_isSmallScreen(context) ? 0.7 : 0.45),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 30,
                          child: Container(
                            height: 60,
                            width: 120,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.brown.withOpacity(0.1),
                                  Colors.brown.withOpacity(0),
                                ],
                                radius: 0.7,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            product['image'],
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                'assets/images/placeholder.png',
                                fit: BoxFit.contain,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'NEW',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.brown[50],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.brown.withOpacity(0.2)),
                    ),
                    child: Text(
                      product['tag'],
                      style: GoogleFonts.poppins(
                        color: Colors.brown[700],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    product['name'],
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Description
                  Text(
                    product['description'],
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.brown[700],
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.brown[400],
                            ),
                          ),
                          Text(
                            product['price'],
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown[900],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.go('/products');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown[900],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                        ),
                        child: Text(
                          'View Details',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 0,
              child: Transform.rotate(
                angle: 0.2,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.coffee,
                        color: Colors.brown[200]?.withOpacity(0.4),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 700;
  }
}
