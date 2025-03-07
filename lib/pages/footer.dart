import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remiksweb/widgets/remiks_icon.dart';
import 'package:remiksweb/widgets/remiks_logo.dart';
import 'package:url_launcher/url_launcher.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RemiksLogo(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: '0923 395 4930'));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Phone number copied to clipboard')),
                    );
                  },
                  icon: RemiksIcon(icon: Icons.phone),
                ),
                IconButton(
                  onPressed: () async {
                    const url = 'https://www.facebook.com/remiksfd/';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  icon: RemiksIcon(icon: Icons.facebook_rounded),
                ),
                IconButton(
                  onPressed: () async {
                    const url = 'https://maps.app.goo.gl/c7HGE6Z1Ty1LGuz46';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  icon: RemiksIcon(icon: Icons.location_on),
                ),
                IconButton(
                  onPressed: () async {
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
                  },
                  icon: RemiksIcon(icon: Icons.email),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
