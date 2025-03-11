import 'package:flutter/material.dart';
import 'package:remiksweb/widgets/remiks_footer.dart';
import 'package:remiksweb/widgets/remiks_navbar.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          RemiksNavbar(),
          RemiksFooter(),
        ],
      ),
    );
  }
}
