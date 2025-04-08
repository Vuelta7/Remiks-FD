import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/core/widgets/page_selector.dart';
import 'package:remiksweb/core/widgets/remiks_customicon.dart';
import 'package:remiksweb/core/widgets/remiks_icon.dart';
import 'package:remiksweb/core/widgets/remiks_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class RemiksFooter extends StatelessWidget {
  const RemiksFooter({super.key});

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

  void _launchTikTok() async {
    const url = 'https://vt.tiktok.com/ZSryp2FMb/?page=TikTokShop';
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

  void _launchShop() async {
    const url =
        'https://www.lazada.com.ph/remiks-fd-food-trading/?q=All-Products&from=wangpu&langFlag=en&pageTypeId=2';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RemiksLogo(size: 150),
                if (isMobileWeb(context)) PageSelector(),
              ],
            ),

            if (!isMobileWeb(context)) PageSelector(),
            isMobileWeb(context)
                ? SizedBox(
                    width: 150,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      children: _buildIconButtons(context),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _buildIconButtons(context),
                  )
            //TODO: add alrights reserved here
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
        tooltip: 'Email Us',
        onPressed: _launchEmail,
        icon: RemiksIcon(icon: Icons.email),
      ),
      RemiksCustomIcon(
        function: _launchShop,
        image: 'assets/lazada_shop.webp',
        tooltip: 'Visit our Lazada Shop',
      ),
      RemiksCustomIcon(
        function: _launchTikTok,
        image: 'assets/tiktok_shop.webp',
        tooltip: 'Visit our TikTok',
      ),
    ];
  }
}
