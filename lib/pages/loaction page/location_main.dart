import 'package:flutter/material.dart';
import 'package:remiksweb/pages/loaction%20page/location_map.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.yellow[700]!, BlendMode.hardLight),
              image: NetworkImage('assets/background_intro_raw.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              RemiksNavbar(),
              SizedBox(
                height: 800,
                width: 1400,
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
