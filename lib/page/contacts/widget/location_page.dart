import 'package:flutter/material.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';
import 'package:remiksweb/page/contacts/widget/location_map.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: RemiksText(
          text: 'Remiks Locations',
          fontSize: 20,
          font: 'Bitshow',
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const ShopLocationMap(),
    );
  }
}
