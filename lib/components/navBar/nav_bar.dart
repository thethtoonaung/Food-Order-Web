import 'package:flutter/material.dart';
import 'package:gourmet_haven/components/navBar/desktop_navbar.dart';
import 'package:gourmet_haven/components/navBar/mobile_navbar.dart';
import 'package:gourmet_haven/constants.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';

class NavBar extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const NavBar({super.key, required this.navCallbacks, });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return DesktopNavbar(
       navCallbacks: navCallbacks,
      );
    } else {
      return MobileNavbar();
    }
  }
}
