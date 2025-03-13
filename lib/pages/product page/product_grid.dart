import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

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
      height: 1600,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final product = products[index];

            return MouseRegion(
              onEnter: (_) => hoverNotifier.value = index,
              onExit: (_) => hoverNotifier.value = -1,
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
                          offset: Offset(3, 3),
                          color: Colors.red[900]!,
                          blurRadius: 3,
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
                              const SizedBox(height: 4),
                              Text(
                                product['description'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 4),
                              RemiksText(
                                fontSize: 30,
                                text: product['price'],
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
            );
          },
        ),
      ),
    );
  }
}
