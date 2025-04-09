import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/core/widgets/navbar_button.dart';
import 'package:remiksweb/core/widgets/remiks_navbar.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/home/widget/product_showcase.dart';

class IntroSection extends ConsumerWidget {
  const IntroSection({super.key});

  List<Widget> _buildIntroContent(BuildContext context, ref) {
    return [
      SizedBox(
        width: 400,
        height: isMobileWeb(context) ? 400 : 600,
        child: ProductShowcase(),
      ),
      if (!isMobileWeb(context)) SizedBox(width: 200),
      Column(
        children: [
          RemiksText(
            fontSize: isMobileWeb(context) ? 35 : 40,
            text: 'Sarap up to\nthe last drop',
            font: 'Bitshow',
            color: Colors.white,
            offset: Offset(3, 3),
          ),
          SizedBox(
            width: 350,
            child: RemiksText(
              fontSize: isMobileWeb(context) ? 18 : 25,
              text:
                  'Taste our very own HOME MADE REMIKS products! message us for inquiries. We will be glad to assist you.',
              font: 'Hey',
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectedPage.notifier).state = 2;
              context.go('/contacts');
            },
            child: MenuButton(text: 'Contact Us'),
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          RemiksNavbar(),
          isMobileWeb(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIntroContent(context, ref),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIntroContent(context, ref),
                  ),
                )
        ],
      ),
    );
  }
}
