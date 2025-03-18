import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/remiks._fb.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_icon.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

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
              RemiksFooter(), //TODO: add feedbacks
            ],
          ),
        ),
      ),
    );
  }
}
