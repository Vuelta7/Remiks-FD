import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remiksweb/pages/widgets/remiks_text.dart';
import 'package:remiksweb/utils/utils.dart';

class ProductGrid extends StatefulWidget {
  final Function(Map<String, dynamic>) onProductSelect;

  const ProductGrid({
    super.key,
    required this.onProductSelect,
  });

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final ValueNotifier<int> hoverNotifier = ValueNotifier<int>(-1);

  @override
  void dispose() {
    hoverNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isMobileWeb(context) ? 3100 : 1700,
      child: Padding(
        padding: EdgeInsets.all(isMobileWeb(context) ? 10 : 40),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobileWeb(context) ? 1 : 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final product = products[index];

            return MouseRegion(
              onEnter: (_) => hoverNotifier.value = index,
              onExit: (_) => hoverNotifier.value = -1,
              child: GestureDetector(
                onTap: () => widget.onProductSelect(product),
                child: ValueListenableBuilder<int>(
                  valueListenable: hoverNotifier,
                  builder: (context, hoverIndex, child) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: hoverIndex == index
                            ? Colors.red[900]!
                            : product['bgColor'],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: isMobileWeb(context)
                                ? Offset(1, 1)
                                : Offset(3, 3),
                            color: Colors.red[900]!,
                            blurRadius: isMobileWeb(context) ? 6 : 3,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              product['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                            child: Column(
                              children: [
                                RemiksText(
                                  fontSize: 30,
                                  text: product['name'],
                                  font: 'Soft',
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

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
      ],
    );
  }
}
