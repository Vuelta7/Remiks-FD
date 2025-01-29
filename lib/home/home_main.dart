import 'package:flutter/material.dart';
import 'package:remiksweb/home/navbar.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 32, 35),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Navbar(),
        ],
      ),
    );
  }
}
