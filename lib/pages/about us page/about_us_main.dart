import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';

class AboutUsMain extends StatelessWidget {
  const AboutUsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
            image: NetworkImage('assets/background_intro_raw.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          RemiksNavbar(),
          Image.asset(
            'assets/remiks_about_us.webp',
            width: 500,
            fit: BoxFit.cover,
          ),
          RemiksFooter(),
        ]),
      ),
    );
  }
}
