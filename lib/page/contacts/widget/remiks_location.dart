import 'package:flutter/material.dart';
import 'package:remiksweb/core/utils.dart';
import 'package:remiksweb/page/contacts/widget/location_map.dart';

class RemiksLocation extends StatelessWidget {
  const RemiksLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      width: isMobileWeb(context) ? 340 : 820,
      child: Stack(
        children: [
          Positioned(
              top: 5,
              left: 5,
              child: Container(
                color: Colors.red[900],
                height: 300,
                width: isMobileWeb(context) ? 330 : 810,
              )),
          SizedBox(
            height: 300,
            width: isMobileWeb(context) ? 330 : 810,
            child: ShopLocationMap(),
          ),
        ],
      ),
    );
  }
}
