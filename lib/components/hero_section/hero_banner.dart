import 'package:flutter/material.dart';
import 'package:gourmet_haven/components/hero_section/desktop_hero_banner.dart';
import 'package:gourmet_haven/components/hero_section/mobile_hero_banner.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import '../../constants.dart';

class HeroBanner extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const HeroBanner({
    super.key, required this.navCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: MobileHeroBanner(navCallbacks: navCallbacks),
        desktop: DesktopHeroBanner(navCallbacks: navCallbacks),
      mobileLarge: MobileHeroBanner(navCallbacks: navCallbacks),
      tablet: TabletHeroBanner(navCallbacks: navCallbacks),
    );
  }
}
