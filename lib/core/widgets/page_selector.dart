import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/widgets/navbar_button.dart';
import 'package:remiksweb/core/widgets/remiks_text.dart';

class PageSelector extends ConsumerStatefulWidget {
  const PageSelector({super.key});

  @override
  ConsumerState<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends ConsumerState<PageSelector> {
  final List<Map<String, String>> menuItems = [
    {'title': 'Home', 'route': '/home'},
    {'title': 'Products', 'route': '/products'},
    {'title': 'Contacts', 'route': '/contacts'},
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: MenuButton(text: 'MENU'),
      onSelected: (String route) {
        context.go(route);
      },
      itemBuilder: (BuildContext context) => menuItems.map((item) {
        return PopupMenuItem<String>(
          value: item['route'],
          child: RemiksText(
            fontSize: 20,
            text: item['title']!,
            font: 'Bitshow',
            color: Colors.red,
          ),
        );
      }).toList(),
    );
  }
}
