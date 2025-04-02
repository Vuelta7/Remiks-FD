import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/core/widgets/remiks_footer.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/home/widget/home_header.dart';
import 'package:remiksweb/page/home/widget/product_carousel.dart';
import 'package:remiksweb/page/home/widget/remiks_about.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
            image: AssetImage('assets/background_intro_raw.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              IntroSection(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  children: [
                    RemiksText(
                      fontSize: 50,
                      text: 'OUR PRODUCTS',
                      font: 'Bitshow',
                      color: Colors.white,
                    ),
                    GestureDetector(
                        onTap: () {
                          ref.read(selectedPage.notifier).state = 1;
                          context.go('/products');
                        },
                        child: ProductCarousel()),
                    SizedBox(
                      height: 10,
                    ),
                    RemiksText(
                      fontSize: 50,
                      text: 'Our Purpose and Goals',
                      font: 'Bitshow',
                      color: Colors.white,
                    ),
                    RemiksAbout(),
                  ],
                ),
              ),
              RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
