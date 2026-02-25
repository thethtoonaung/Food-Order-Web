import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

import '../../constants.dart';
class HeroCircle extends StatelessWidget {
  const HeroCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 230,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding / 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ArcText(
              radius: 35,
              text: "Gourmet",
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
              startAngle: -3.14 / 2,
              placement: Placement.outside,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Fresh &\nTasty",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "assets/icons/burger_5639794.png",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  color: primaryColor,
                ),
                Text(
                  "Rich &\nSavoury",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ArcText(
              radius: 25,
              text: "Haven",
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
              startAngle: 3.14 / 2,
              placement: Placement.outside,
            ),
          ],
        ),
      ),
    );
  }
}