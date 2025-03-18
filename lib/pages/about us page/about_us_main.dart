import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/location_map.dart';
import 'package:remiksweb/widgets/remiks_about.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';

class AboutUsMain extends StatelessWidget {
  const AboutUsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
              image: AssetImage('assets/background_intro_raw.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              RemiksNavbar(),
              RemiksAbout(),
              Container(
                height: 500,
                width: 1400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red[900]!,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: ShopLocationMap(),
              ),
              RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
