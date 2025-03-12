import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remiksweb/utils.dart';
import 'package:remiksweb/widgets/navbar_button.dart';
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
    return isMobileWeb(context)
        ? PopupMenuButton<String>(
            icon: MenuButton(
              text: 'MENU',
            ),
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Home',
                child: Text('Home'),
              ),
              const PopupMenuItem<String>(
                value: 'Products',
                child: Text('Products'),
              ),
              const PopupMenuItem<String>(
                value: 'Locations',
                child: Text('Locations'),
              ),
              const PopupMenuItem<String>(
                value: 'Contacts',
                child: Text('Contacts'),
              ),
              const PopupMenuItem<String>(
                value: 'About us',
                child: Text('About us'),
              ),
            ],
          )
        : SizedBox(
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
                          margin: const EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            color: ref.watch(selectedPage) == index
                                ? Colors.red
                                : Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red[900]!,
                                offset: Offset(2, 2),
                                blurRadius: 0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
          );
  }
}
