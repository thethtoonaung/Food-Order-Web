import 'package:flutter/material.dart';
import '../../constants.dart';
import '../navBar/nav_bar.dart';
import 'animated_hero_content.dart';
import 'hero_circle.dart';

class DesktopHeroBanner extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const DesktopHeroBanner({super.key, required this.navCallbacks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(ImageAssets.hero, fit: BoxFit.cover),
          Container(color: Colors.transparent.withOpacity(0.4)),
          // NavBar
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: NavBar(navCallbacks: navCallbacks),
          ),

          // Main Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedHeroContent(
                  mainHeadingStyle: Theme.of(context).textTheme.displaySmall!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // height: 1.5
                      ),
                  subHeadingStyle: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(
                        color: Colors.white70,
                        // height: 2,
                      ),
                ),
                AnimatedScale(
                  duration: const Duration(milliseconds: 700),
                  scale: 1.0,
                  curve: Curves.easeOutBack,
                  child: const HeroCircle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletHeroBanner extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const TabletHeroBanner({super.key, required this.navCallbacks});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(ImageAssets.hero, fit: BoxFit.cover),
          Container(color: Colors.transparent.withOpacity(0.4)),
          // NavBar
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: NavBar(navCallbacks: navCallbacks),
          ),
          // Main Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: AnimatedHeroContent(
              mainHeadingStyle: Theme.of(context).textTheme.headlineMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
