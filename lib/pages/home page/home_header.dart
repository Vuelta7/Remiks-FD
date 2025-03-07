import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/navbar_button.dart';
import 'package:remiksweb/widgets/product_showcase.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

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
            color: Colors.red,
          ),
          RemiksText(
            fontSize: isMobileWeb(context) ? 35 : 40,
            text: 'Sarap up to\nthe last drop',
            font: 'Hey',
            color: Colors.red,
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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
          image: NetworkImage('assets/background_intro_raw.webp'),
          fit: BoxFit.cover,
        ),
      ),
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
