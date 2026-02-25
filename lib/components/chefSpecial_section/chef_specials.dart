
import 'package:flutter/material.dart';
import 'package:gourmet_haven/components/chefSpecial_section/desktop_special_container.dart';
import 'package:gourmet_haven/components/chefSpecial_section/mobile_special_container.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
class ChefSpecials extends StatelessWidget {
  const ChefSpecials({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: MobileSpecialContainer(),
        desktop: DesktopSpecialContainer(),
      tablet: MobileSpecialContainer(),
    );
  }
}