import 'package:flutter/material.dart';

import '../../constants.dart';

class HoverIcon extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const HoverIcon({required this.icon, required this.onPressed});

  @override
  State<HoverIcon> createState() => HoverIconState();
}

class HoverIconState extends State<HoverIcon> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          transform: _hovered
              ? (Matrix4.identity()..scale(1.2))
              : Matrix4.identity(),
          child: Icon(widget.icon, color: bgColor, size: 20),
        ),
      ),
    );
  }
}
