import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  const MenuButton({super.key, required this.text});

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
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 35,
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
                    color: Colors.yellowAccent,
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
