import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/page_selector.dart';
import 'package:remiksweb/widgets/remiks_icon.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  void phoneNum(context) {
    Clipboard.setData(ClipboardData(text: '0923 395 4930'));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Phone number copied to clipboard')),
    );
  }

  void _launchFacebook() async {
    const url = 'https://www.facebook.com/remiksfd/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchMaps() async {
    const url = 'https://maps.app.goo.gl/c7HGE6Z1Ty1LGuz46';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'remiksfd@gmail.com',
      query: 'subject=Contact&body=Hello',
    );
    var url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RemiksLogo(size: 200),
            PageSelector(),
            isMobileWeb(context)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _buildIconButtons(context),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _buildIconButtons(context),
                  )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildIconButtons(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Phone number copied to clipboard',
        onPressed: () => phoneNum(context),
        icon: RemiksIcon(icon: Icons.phone),
      ),
      IconButton(
        tooltip: 'Go to Facebook',
        onPressed: _launchFacebook,
        icon: RemiksIcon(icon: Icons.facebook_rounded),
      ),
      IconButton(
        tooltip: 'Our Location',
        onPressed: _launchMaps,
        icon: RemiksIcon(icon: Icons.location_on),
      ),
      IconButton(
        tooltip: 'Send Email to Remiks FD',
        onPressed: _launchEmail,
        icon: RemiksIcon(icon: Icons.email),
      ),
    ];
  }
}
