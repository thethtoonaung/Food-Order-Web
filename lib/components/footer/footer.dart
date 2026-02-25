
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gourmet_haven/components/footer/desktop_footer.dart';
import 'package:gourmet_haven/components/footer/mobile_footer.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';
import 'hover_icon.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: MobileFooter(logoText: _buildLogoText(context), copyRightText: _buildCopyright(context), socialIcons: _buildSocialIcons()),
        desktop: DesktopFooter(logoText: _buildLogoText(context), copyRightText: _buildCopyright(context), socialIcons: _buildSocialIcons()),
        tablet: MobileFooter(logoText: _buildLogoText(context), copyRightText: _buildCopyright(context), socialIcons: _buildSocialIcons()),
    );
  }

  Widget _buildLogoText(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/icons/burger_5639794.png",
          width: 40,
          height: 40,
          color: bgColor,
        ),
        const SizedBox(width: 10),
        Text(
          "GOURMET HAVEN",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: bgColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildCopyright(BuildContext context) {
    return Text(
      "Copyright © 2025 Gourmet Haven. All rights reserved.",
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: bgColor),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HoverIcon(
          icon: FontAwesomeIcons.linkedin,
          onPressed: () {
            _launchUrl("https://www.linkedin.com/in/muhammad-umair-b86325328");
          },
        ),
        const SizedBox(width: 16),
        HoverIcon(
          icon: FontAwesomeIcons.instagram,
          onPressed: () {
            _launchUrl("https://www.linkedin.com/in/muhammad-umair-b86325328");
          },
        ),
        const SizedBox(width: 16),
        HoverIcon(
          icon: FontAwesomeIcons.github,
          onPressed: () {
            _launchUrl("https://github.com/Muhammad-Umair-Gujjar");
          },
        ),
      ],
    );
  }
}
