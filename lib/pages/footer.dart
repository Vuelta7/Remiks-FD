import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

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
      height: 300,
      child: Row(
        children: [
          RemiksLogo(),
        ],
      ),
    );
  }
}
