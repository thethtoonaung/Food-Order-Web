import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/hover_nav_text.dart';

class DesktopNavbar extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const DesktopNavbar({
    super.key, required this.navCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage("assets/icons/burger_5639794.png"),
            width: 40,
            height: 40,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
          SizedBox(width: defaultPadding / 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("GOURMET"), Text("HAVEN")],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(height: defaultPadding / 4),
              Row(
                children: [
                  HoverNavText(label: "Specials", onTap: navCallbacks.onSpecialsTap),
                  SizedBox(width: defaultPadding * 1.5),
                  HoverNavText(label: "Starters", onTap: navCallbacks.onStartersTap),
                  SizedBox(width: defaultPadding * 1.5),
                  HoverNavText(label: "About", onTap: navCallbacks.onAboutTap),
                  SizedBox(width: defaultPadding * 1.5),
                  HoverNavText(label: "Social", onTap: navCallbacks.onSocialTap),
                ],
              ),
            ],
          ),
          Spacer(),
          CustomElevatedButton(
            text: "Book Now",
            onPressed: () {},
            icon: Icons.arrow_forward,
          ),
        ],
      ),
    );
  }
}
