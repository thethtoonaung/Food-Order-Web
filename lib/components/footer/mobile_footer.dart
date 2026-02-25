import 'package:flutter/material.dart';
import '../../constants.dart';

class MobileFooter extends StatelessWidget {
  final Widget logoText;
  final Widget copyRightText;
  final Widget socialIcons;
  const MobileFooter({
    super.key,
    required this.logoText,
    required this.copyRightText,
    required this.socialIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkColor,
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding / 4,
        horizontal: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logoText,
          const SizedBox(height: defaultPadding / 4),
          Divider(height: 1, color: primaryColor),
          const SizedBox(height: defaultPadding / 4),
          copyRightText,
          const SizedBox(height: defaultPadding / 4),
          socialIcons,
        ],
      ),
    );
  }
}
