import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/utils/launchers.dart';
import 'package:remiksweb/core/widgets/navbar_button.dart';
import 'package:remiksweb/core/widgets/remiks_footer.dart';
import 'package:remiksweb/core/widgets/remiks_icon.dart';
import 'package:remiksweb/core/widgets/remiks_image.dart';
import 'package:remiksweb/core/widgets/remiks_navbar.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/contacts/widget/remiks_fb.dart';
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
              GestureDetector(
                onTap: launchFacebook,
                child: MenuButton(
                  text: 'Go to Facebook Page',
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              RemiksImage(
                image: 'assets/remiks_ig.webp',
                height: 235,
                width: 340,
              ),
              SizedBox(height: 20),
              RemiksText(
                fontSize: 20,
                text: 'Follow us on our\nInstagram Page',
                font: 'Bitshow',
                color: Colors.white,
              ),
              GestureDetector(
                onTap: launchInstagram,
                child: MenuButton(
                  text: 'Go to Instagram Page',
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RemiksIcon(icon: Icons.email),
                  SizedBox(width: 10),
                  RemiksText(
                    fontSize: 20,
                    text: 'Email Us in\nremiksfd@gmail.com',
                    font: 'Bitshow',
                    color: Colors.white,
                  ),
                ],
              ),
              GestureDetector(
                onTap: launchEmail,
                child: MenuButton(
                  text: 'Email Us',
                  width: 200,
                ),
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
              SizedBox(height: 20),
              RemiksFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
