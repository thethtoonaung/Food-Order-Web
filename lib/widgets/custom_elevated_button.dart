import 'package:flutter/material.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';

import '../constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  CustomElevatedButton({
    super.key,
    this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: ResponsiveLayout.isDesktop(context)
            ? EdgeInsets.symmetric(
                vertical: defaultPadding / 1.8,
                horizontal: defaultPadding / 1.5,
              )
            : EdgeInsets.symmetric(
                vertical: defaultPadding / 2.5,
                horizontal: defaultPadding / 2,
              ),
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: TextStyle(color: Colors.white)),
          if (icon != null) ...[
            SizedBox(width: 8),
            Icon(icon, color: Colors.white),
          ],
        ],
      ),
    );
  }
}
