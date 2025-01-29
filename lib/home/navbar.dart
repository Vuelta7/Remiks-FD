import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Image.asset(
              'assets/remiks_logo.png',
              height: 60,
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.menu_rounded,
              size: 50,
              color: Color.fromARGB(255, 238, 32, 35),
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
