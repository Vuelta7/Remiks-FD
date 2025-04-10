import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remiksweb/core/utils/launchers.dart';
import 'package:remiksweb/core/utils/utils.dart';
import 'package:remiksweb/core/widgets/page_selector.dart';
import 'package:remiksweb/core/widgets/remiks_customicon.dart';
import 'package:remiksweb/core/widgets/remiks_icon.dart';
import 'package:remiksweb/core/widgets/remiks_logo.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';

class RemiksFooter extends StatelessWidget {
  const RemiksFooter({super.key});

  void phoneNum(context) {
    Clipboard.setData(ClipboardData(text: '0923 395 4930'));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Phone number copied to clipboard')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
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
                      ),
              ],
            ),
            RemiksText(
              text: '© 2025 Remiks FD. All rights reserved.',
              fontSize: 20,
              color: Colors.white,
              font: 'Hey',
            ),
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
        onPressed: launchFacebook,
        icon: RemiksIcon(icon: Icons.facebook_rounded),
      ),
      IconButton(
        tooltip: 'Our Location',
        onPressed: launchMaps,
        icon: RemiksIcon(icon: Icons.location_on),
      ),
      IconButton(
        tooltip: 'Email Us',
        onPressed: launchEmail,
        icon: RemiksIcon(icon: Icons.email),
      ),
      RemiksCustomIcon(
        function: launchShop,
        image: 'assets/lazada_shop.webp',
        tooltip: 'Visit our Lazada Shop',
        padding: const EdgeInsets.fromLTRB(19, 16, 0, 0),
      ),
      RemiksCustomIcon(
        function: launchTikTok,
        image: 'assets/tiktok_shop.webp',
        tooltip: 'Visit our TikTok',
        padding: const EdgeInsets.fromLTRB(19, 14, 0, 0),
      ),
    ];
  }
}
//TODO add ismobile in lazada and tiktok button
