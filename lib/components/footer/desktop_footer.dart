import 'package:flutter/material.dart';
import '../../constants.dart';
class DesktopFooter extends StatelessWidget {
  final Widget logoText;
  final Widget copyRightText;
  final Widget socialIcons;
  const DesktopFooter({super.key, required this.logoText, required this.copyRightText, required this.socialIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkColor,
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding / 4,
        horizontal: defaultPadding * 3,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logoText,
          const Spacer(),
          copyRightText,
          const Spacer(),
          socialIcons,
        ],
      ),
    );
  }
}
