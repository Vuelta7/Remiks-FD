import 'package:flutter/material.dart';
import 'package:remiksweb/home/contacts.dart';
import 'package:remiksweb/home/home_page.dart';
import 'package:remiksweb/home/navbar.dart';
import 'package:remiksweb/home/products.dart';
import 'package:remiksweb/utils.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Navbar(),
            HomePage(),
            Products(),
            Contacts(),
          ],
        ),
      ),
    );
  }
}
