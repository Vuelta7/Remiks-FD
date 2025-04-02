import 'package:flutter/material.dart';
import 'package:remiksweb/core/widgets/remiks_footer.dart';
import 'package:remiksweb/core/widgets/remiks_icon.dart';
import 'package:remiksweb/core/widgets/remiks_navbar.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/contact/widget/location_map.dart';
import 'package:remiksweb/page/contact/widget/remiks._fb.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RemiksNavbar(),
              RemiksFB(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RemiksIcon(
                    icon: Icons.facebook_rounded,
                  ),
                  RemiksText(
                    fontSize: 20,
                    text: 'Message us on our Facebook Page',
                    font: 'Bitshow',
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red[900]!,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ShopLocationMap(),
              ),
              RemiksFooter(), //TODO: add feedbacks
            ],
          ),
        ),
      ),
    );
  }
}
