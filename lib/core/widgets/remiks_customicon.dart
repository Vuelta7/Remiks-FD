import 'package:flutter/material.dart';

class RemiksCustomIcon extends StatelessWidget {
  final VoidCallback function;
  final String image;
  final String? tooltip;
  const RemiksCustomIcon(
      {super.key, required this.function, required this.image, this.tooltip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(21, 10, 0, 0),
      child: SizedBox(
        width: 45,
        height: 45,
        child: InkWell(
          onTap: function,
          child: Tooltip(
            message: tooltip ?? '',
            child: Stack(
              children: [
                Positioned(
                  left: 1,
                  top: 1,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.red[900]!,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      image,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.red,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    image,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
