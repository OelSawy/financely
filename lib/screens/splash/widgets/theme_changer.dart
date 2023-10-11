import 'package:financely/core/theme/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

Widget themeChanger() {
  return StatefulBuilder(
    builder: (BuildContext context, setState) {
      return IconButton(
          iconSize: 100,
          icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, anim) => RotationTransition(
                    turns: child.key == const ValueKey('icon1')
                        ? Tween<double>(begin: 1, end: 0.75).animate(anim)
                        : Tween<double>(begin: 0.75, end: 1).animate(anim),
                    child: ScaleTransition(scale: anim, child: child),
                  ),
              child: context.watch<ThemeProvider>().isDark
                  ? const Icon(Iconsax.sun_14, key: ValueKey('icon1'))
                  : const Icon(
                      Iconsax.moon4,
                      key: ValueKey('icon2'),
                    )),
          onPressed: () {
            setState(() {
              context.read<ThemeProvider>().isDark
                  ? context.read<ThemeProvider>().isDark = false
                  : context.read<ThemeProvider>().isDark = true;
            });
          });
    },
  );
}
