import 'package:flutter/material.dart';
import 'package:remiksweb/utils.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              child: Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFFE68642),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFFFFDD45),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "MENU",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: themeColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
