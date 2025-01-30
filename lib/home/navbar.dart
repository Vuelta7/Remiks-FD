import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

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

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              child: Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFFE68642),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFFFFDD45),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "MENU",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: themeColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
