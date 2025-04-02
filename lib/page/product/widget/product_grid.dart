import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';

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
    return Padding(
      padding: EdgeInsets.all(isMobileWeb(context) ? 10 : 40),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobileWeb(context) ? 1 : 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          childAspectRatio: 0.8,
        ),
        shrinkWrap: true,
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
    );
  }
}
