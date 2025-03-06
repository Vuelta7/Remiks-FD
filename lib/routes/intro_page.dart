import 'package:flutter/material.dart';
import 'package:remiksweb/routes/product_carousel.dart';
import 'package:remiksweb/widgets/navbar_button.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RemiksLogo(),
              PopupMenuButton<String>(
                icon: MenuButton(),
                onSelected: (String result) {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Home',
                    child: Text('Home'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Products',
                    child: Text('Products'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Contacts',
                    child: Text('Contacts'),
                  ),
                ],
              ),
            ],
          ),
          ProductCarousel(),
        ],
      ),
    );
  }
}
