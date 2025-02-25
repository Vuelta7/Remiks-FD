import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/utils/navbar_button.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: themeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    top: 3,
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Color(0xFFE68642),
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        'assets/remiks_logo.png',
                        height: 60,
                      ),
                    ),
                  ),
                  ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Color(0xFFFFDD45),
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      'assets/remiks_logo.png',
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
    );
  }
}
