import 'package:flutter/material.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import '../../constants.dart';
import '../navBar/nav_bar.dart';
import 'animated_hero_content.dart';

class MobileHeroBanner extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const MobileHeroBanner({
    super.key, required this.navCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
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
            child: NavBar(navCallbacks: navCallbacks,
            ),
          ),

          // Main Content
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding/2,
              ),
              child: ResponsiveLayout.isMobileLarge(context)?AnimatedHeroContent(mainHeadingStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // height:1.5
              ),):AnimatedHeroContent(mainHeadingStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // height:1.5
              ),)
          ),
        ],
      ),
    );
  }
}
