import 'package:flutter/material.dart';
import 'package:gourmet_haven/widgets/custom_elevated_button.dart';
import '../../constants.dart';

class NavDrawer extends StatelessWidget {
  final NavCallbacks navCallbacks;
  const NavDrawer({super.key, required this.navCallbacks});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [
            ListTile(
              title: const Text("Specials", style: TextStyle(color: darkColor)),
              onTap: () {
                Navigator.of(context).pop(); // ✅ close drawer
                navCallbacks.onSpecialsTap(); // ✅ scroll
              },
            ),
            ListTile(
              title: const Text("Starters", style: TextStyle(color: darkColor)),
              onTap: () {
                Navigator.of(context).pop(); // ✅ close drawer
                navCallbacks.onStartersTap(); // ✅ scroll
              },
            ),
            ListTile(
              title: const Text("About", style: TextStyle(color: darkColor)),
              onTap: () {
                Navigator.of(context).pop(); // ✅ close drawer
                navCallbacks.onAboutTap(); // ✅ scroll
              },
            ),
            ListTile(
              title: const Text("Social", style: TextStyle(color: darkColor)),
              onTap: () {
                Navigator.of(context).pop(); // ✅ close drawer
                navCallbacks.onSocialTap(); // ✅ scroll
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: "Book Now",
              onPressed: () {},
              icon: Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}
