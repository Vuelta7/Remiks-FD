import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const MenuButton(
      {super.key, required this.text, this.width = 100, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              child: Container(
                width: width,
                height: height - 15,
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              width: width,
              height: height - 15,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
