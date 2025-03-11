import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/remiks_text.dart';

class PageSelector extends ConsumerStatefulWidget {
  const PageSelector({super.key});

  @override
  ConsumerState<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends ConsumerState<PageSelector> {
  final List<String> menuItems = [
    'Home',
    'Products',
    'Locations',
    'Contacts',
    'About Us'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(menuItems.length, (index) {
            return GestureDetector(
              onTap: () {
                ref.read(selectedPage.notifier).state = index;
                Navigator.pushNamed(context, '/${menuItems[index]}');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RemiksText(
                      fontSize: 25,
                      text: menuItems[index],
                      font: 'Hey',
                      color: Colors.red),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 3,
                    width: ref.watch(selectedPage) == index ? 80 : 0,
                    color: ref.watch(selectedPage) == index
                        ? Colors.red
                        : Colors.transparent,
                    margin: const EdgeInsets.only(top: 4),
                  )
                ],
              ),
            );
          })),
    );
  }
}
