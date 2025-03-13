import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ValueNotifier<int> hoverNotifier = ValueNotifier<int>(-1);

  @override
  void dispose() {
    hoverNotifier.dispose();
    super.dispose();
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
              image: NetworkImage('assets/background_intro_raw.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const RemiksNavbar(),
              SizedBox(
                height: 1600,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    ? getShade(product['bgColor'], 900)
                                    : product['bgColor'],
                                borderRadius: BorderRadius.circular(10),
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          product['name'],
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
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
                                        Text(
                                          product['price'],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
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
              ),
              const RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
