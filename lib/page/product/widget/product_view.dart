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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            color: Colors.red[900]!.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      clipBehavior:
          Clip.antiAlias, // Ensures child doesn't overflow rounded corners
      child: Stack(
        children: [
          // Background accent design
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red[900]!.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with close button
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.red[100]!,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Details',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red[900],
                      ),
                    ),
                    IconButton(
                      icon: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child:
                            Icon(Icons.close, color: Colors.red[900], size: 18),
                      ),
                      onPressed: onClose,
                      splashRadius: 24,
                    ),
                  ],
                ),
              ),

              // Content
              Padding(
                padding: const EdgeInsets.all(24),
                child: isMobileWeb(context)
                    ? _buildMobileLayout()
                    : _buildDesktopLayout(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image section with enhanced container
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Image.asset(
              product['image'],
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(width: 32),
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
        // Image container with shadow
        Container(
          height: 220,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Image.asset(
            product['image'],
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 24),
        _buildProductDetails(),
      ],
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product name with improved typography
        Text(
          product['name'],
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.red[900],
            height: 1.2,
          ),
        ),

        const SizedBox(height: 8),

        // Tags/badges
        if (product['tags'] != null)
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: (product['tags'] as List)
                .map((tag) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red[100]!),
                      ),
                      child: Text(
                        tag,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.red[900],
                        ),
                      ),
                    ))
                .toList(),
          )
        else
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red[100]!),
            ),
            child: Text(
              'Featured',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.red[900],
              ),
            ),
          ),

        const SizedBox(height: 24),

        // Description section with improved styling
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Description',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product['longDescription'] ?? product['description'],
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Price and buy section
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product['price'],
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900],
                        ),
                      ),
                      if (product['originalPrice'] != null) ...[
                        const SizedBox(width: 8),
                        Text(
                          product['originalPrice'],
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            if (product['link'] != null)
              SizedBox(
                height: 50,
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
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Buy Now',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.shopping_cart_outlined, size: 18),
                    ],
                  ),
                ),
              ),
          ],
        ),

        // Additional info section
        if (product['additionalInfo'] != null) ...[
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.red[100]!),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.red[900]),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    product['additionalInfo'],
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.red[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
