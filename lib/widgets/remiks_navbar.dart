import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/navbar_button.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';

class RemiksNavbar extends StatelessWidget {
  const RemiksNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RemiksLogo(size: 150),
          SizedBox(
            width: 50,
          ),
          PopupMenuButton<String>(
            icon: MenuButton(
              text: 'MENU',
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
