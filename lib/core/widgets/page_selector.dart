import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remiksweb/core/utils/utils.dart';
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
    return isMobileWeb(context)
        ? PopupMenuButton<String>(
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
          )
        : SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: menuItems.map((item) {
                int index = menuItems.indexOf(item);
                return GestureDetector(
                  onTap: () {
                    ref.read(selectedPage.notifier).state = index;
                    context.go(item['route']!);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RemiksText(
                        fontSize: 25,
                        text: item['title']!,
                        font: 'Hey',
                        color: Colors.red,
                      ),
                      Container(
                        height: 3,
                        width: ref.watch(selectedPage) == index ? 80 : 0,
                        margin: const EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                          color: ref.watch(selectedPage) == index
                              ? Colors.red
                              : Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[900]!,
                              offset: const Offset(2, 2),
                              blurRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          );
  }
}
