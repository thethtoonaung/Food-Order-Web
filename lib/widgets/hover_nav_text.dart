import 'package:flutter/material.dart';
import 'package:gourmet_haven/constants.dart';

class HoverNavText extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final double underlineWidth;

  const HoverNavText({
    super.key,
    required this.label,
    required this.onTap,
    double? underlineWidth,
  }) : underlineWidth = underlineWidth ?? (label.length*9.0);

  @override
  State<HoverNavText> createState() => _HoverNavTextState();
}

class _HoverNavTextState extends State<HoverNavText> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontWeight: _hovering ? FontWeight.w900 : FontWeight.w500,
      color: _hovering ? primaryColor : Colors.white,
    );
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: textStyle ?? const TextStyle(),
              child: Text(widget.label),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              height: 1,
              width: _hovering ? widget.underlineWidth : 0,
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
