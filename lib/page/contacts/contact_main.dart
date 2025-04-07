import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/widgets/navbar_button.dart';
import 'package:remiksweb/core/widgets/remiks_footer.dart';
import 'package:remiksweb/core/widgets/remiks_icon.dart';
import 'package:remiksweb/core/widgets/remiks_navbar.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/contacts/widget/remiks._fb.dart';
import 'package:remiksweb/page/contacts/widget/remiks_location.dart';

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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RemiksIcon(icon: Icons.facebook_rounded),
                  SizedBox(width: 10),
                  RemiksText(
                    fontSize: 20,
                    text: 'Message us on our\nFacebook Page',
                    font: 'Bitshow',
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              RemiksLocation(),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  context.push('/location');
                },
                child: MenuButton(
                  text: 'Show Full Map',
                  width: 200,
                ),
              ),
              RemiksFooter(), //TODO: add email instagram and more
            ],
          ),
        ),
      ),
    );
  }
}
