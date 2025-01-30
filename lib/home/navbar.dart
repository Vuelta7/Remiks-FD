import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Image.asset(
              'assets/remiks_logo.png',
              height: 60,
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.menu_rounded,
              size: 60,
              color: themeColor,
            ),
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
