import 'package:flutter/material.dart';

class RemiksFB extends StatelessWidget {
  const RemiksFB({super.key});
  // TODO: make for mobile
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      width: 810,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red[900]!, BlendMode.srcIn),
              child: Image.asset(
                'assets/fb_page.png',
                height: 400,
              ),
            ),
          ),
          Image.asset(
            'assets/fb_page.png',
            height: 400,
          ),
          Positioned(
            top: 355,
            left: 140,
            child: Container(
              width: 160,
              height: 30,
              color: Color.fromARGB(255, 37, 39, 40),
            ),
          ),
        ],
      ),
    );
  }
}
