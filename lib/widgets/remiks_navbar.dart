import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/page_selector.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';

class RemiksNavbar extends StatefulWidget {
  const RemiksNavbar({super.key});

  @override
  State<RemiksNavbar> createState() => _RemiksNavbarState();
}

class _RemiksNavbarState extends State<RemiksNavbar> {
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
          PageSelector(),
        ],
      ),
    );
  }
}
