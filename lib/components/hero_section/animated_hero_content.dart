import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/custom_elevated_button.dart';

class AnimatedHeroContent extends StatefulWidget {
  final TextStyle mainHeadingStyle;
  final TextStyle? subHeadingStyle;
  const AnimatedHeroContent({super.key, required this.mainHeadingStyle, this.subHeadingStyle});

  @override
  State<AnimatedHeroContent> createState() => _AnimatedHeroContentState();
}

class _AnimatedHeroContentState extends State<AnimatedHeroContent>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _slideAnimation = Tween<Offset>(begin: Offset(-0.1, 0), end: Offset.zero)
        .animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic),
    );
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Elevate Your Taste Buds-\nGourmet Dining At Its Finest",
              style: widget.mainHeadingStyle,
            ),
            const SizedBox(height: defaultPadding / 3),
            Text(
              "Indulge in expertly crafted dishes made with the freshest\n"
                  "ingredients, served in a warm and inviting atmosphere",
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: widget.subHeadingStyle?? Theme.of(context).textTheme.bodySmall?.copyWith(
                color: bgColor,
                // height: 2,
              ),
              ),
            const SizedBox(height: defaultPadding / 2),
            CustomElevatedButton(text: 'Book Now', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
