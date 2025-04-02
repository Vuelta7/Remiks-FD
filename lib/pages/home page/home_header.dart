import 'package:flutter/material.dart';
import 'package:remiksweb/pages/widgets/navbar_button.dart';
import 'package:remiksweb/pages/widgets/product_showcase.dart';
import 'package:remiksweb/pages/widgets/remiks_navbar.dart';
import 'package:remiksweb/pages/widgets/remiks_text.dart';
import 'package:remiksweb/utils/utils.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  List<Widget> _buildIntroContent(BuildContext context) {
    return [
      SizedBox(
        width: 200,
        height: isMobileWeb(context) ? 300 : 500,
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
          RemiksText(
            fontSize: isMobileWeb(context) ? 35 : 40,
            text: 'Sarap up to\nthe last drop',
            font: 'Hey',
            color: Colors.white,
          ),
          SizedBox(
            child: MenuButton(text: 'Order Now'),
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          RemiksNavbar(),
          isMobileWeb(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIntroContent(context),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIntroContent(context),
                  ),
                )
        ],
      ),
    );
  }
}
