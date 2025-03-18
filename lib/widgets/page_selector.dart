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
  final List<String> menuItems = ['Home', 'Products', 'Contacts', 'About Us'];
  @override
  Widget build(BuildContext context) {
    return isMobileWeb(context)
        ? PopupMenuButton<String>(
            icon: MenuButton(
              text: 'MENU',
            ),
            onSelected: (String result) {
              Navigator.pushNamed(context, '/$result');
            },
            itemBuilder: (BuildContext context) => List.generate(
              menuItems.length,
              (index) => PopupMenuItem<String>(
                value: menuItems[index],
                child: RemiksText(
                  fontSize: 20,
                  text: menuItems[index],
                  font: 'Bitshow',
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/${menuItems[index]}');
                },
              ),
            ),
          )
        : SizedBox(
            width: 450,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                menuItems.length,
                (index) {
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
                                offset: Offset(2, 2),
                                blurRadius: 0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
  }
}
