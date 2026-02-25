import 'package:flutter/material.dart';
import 'package:gourmet_haven/components/about.dart';
import 'package:gourmet_haven/components/chefSpecial_section/chef_specials.dart';
import 'package:gourmet_haven/components/footer/footer.dart';
import 'package:gourmet_haven/components/hero_section/hero_banner.dart';
import 'package:gourmet_haven/components/signature_dishes.dart';
import 'package:gourmet_haven/components/starters.dart';
import 'package:gourmet_haven/components/suggestions.dart';
import 'package:gourmet_haven/constants.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';

import '../components/navBar/nav_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey specialsKey = GlobalKey();
  final GlobalKey startersKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey socialKey = GlobalKey();

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final callbacks = NavCallbacks(
      onSpecialsTap: () => scrollToSection(specialsKey),
      onStartersTap: () => scrollToSection(startersKey),
      onAboutTap: () => scrollToSection(aboutKey),
      onSocialTap: () => scrollToSection(socialKey),
    );
    return Scaffold(
      drawer: NavDrawer(navCallbacks: callbacks),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Column(
              children: [
                HeroBanner(navCallbacks: callbacks),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: (ResponsiveLayout.isMobileLarge(context))
                        ? defaultPadding / 2
                        : defaultPadding,
                    vertical: defaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      KeyedSubtree(key: specialsKey, child: ChefSpecials()),
                      Suggestions(),
                      SignatureDishes(),
                      KeyedSubtree(key: startersKey, child: Starters()),
                      KeyedSubtree(key: aboutKey, child: About()),
                    ],
                  ),
                ),
                Divider(height: 1, color: primaryColor),
                KeyedSubtree(key: socialKey, child: Footer()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
