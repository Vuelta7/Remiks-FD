import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductOverview extends StatelessWidget {
  final Map<String, dynamic> product;
  final VoidCallback onClose;

  const ProductOverview({
    super.key,
    required this.product,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(isMobileWeb(context) ? 10 : 40),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 3),
            color: Colors.red[900]!,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.red),
                onPressed: onClose,
              ),
            ],
          ),
          isMobileWeb(context) ? _buildMobileLayout() : _buildDesktopLayout(),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            product['image'],
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: _buildProductDetails(),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            height: 200,
            child: Image.asset(
              product['image'],
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 20),
        _buildProductDetails(),
      ],
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Product',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product['name'],
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.red[900],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Product Description',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product['description'],
          style: GoogleFonts.poppins(fontSize: 14),
        ),
        const SizedBox(height: 16),
        Text(
          'Price',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          product['price'],
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red[900],
          ),
        ),
        if (product['link'] != null)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: ElevatedButton(
              onPressed: () async {
                final url = Uri.parse(product['link']);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
                foregroundColor: Colors.white,
              ),
              child: Text('Buy Now'),
            ),
          ),
      ],
    );
  }
}
