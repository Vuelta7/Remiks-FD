import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/core/widgets/remiks_footer.dart';
import 'package:remiksweb/core/widgets/remiks_navbar.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/product/product_view.dart';
import 'package:remiksweb/page/product/widget/product_grid.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Map<String, dynamic>? selectedProduct;

  void selectProduct(Map<String, dynamic> product) {
    setState(() {
      selectedProduct = product;
    });
  }

  void clearSelection() {
    setState(() {
      selectedProduct = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
              image: AssetImage('assets/background_intro_raw.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const RemiksNavbar(),
              RemiksText(
                fontSize: isMobileWeb(context) ? 30 : 80,
                text: 'Our Products!',
                font: 'Bitshow',
                color: Colors.white,
                offset: Offset(3, 3),
              ),
              if (selectedProduct != null)
                ProductOverview(
                  product: selectedProduct!,
                  onClose: clearSelection,
                )
              else
                ProductGrid(onProductSelect: selectProduct),
              RemiksText(
                fontSize: 30,
                text: 'Sarap up to the last drop!',
                font: 'Bitshow',
                color: Colors.white,
              ),
              const RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
