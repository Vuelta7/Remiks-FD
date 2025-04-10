import 'package:url_launcher/url_launcher.dart';

void launchFacebook() async {
  const url = 'https://www.facebook.com/remiksfd/';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void launchMaps() async {
  const url = 'https://maps.app.goo.gl/c7HGE6Z1Ty1LGuz46';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void launchTikTok() async {
  const url = 'https://vt.tiktok.com/ZSryp2FMb/?page=TikTokShop';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void launchEmail() async {
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

void launchShop() async {
  const url =
      'https://www.lazada.com.ph/remiks-fd-food-trading/?q=All-Products&from=wangpu&langFlag=en&pageTypeId=2';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
