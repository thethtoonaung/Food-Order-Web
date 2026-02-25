import 'package:flutter/material.dart';

import '../../constants.dart';
class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.white),
          );
        },
      ),
      title: Row(
        children: [
          Image(
            image: AssetImage("assets/icons/burger_5639794.png"),
            width: 30,
            height: 30,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
          SizedBox(width: defaultPadding / 5),
          Text(
            "Gourmet Haven",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
