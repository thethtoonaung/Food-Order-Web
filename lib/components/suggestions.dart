import 'package:flutter/material.dart';
import 'package:gourmet_haven/models/suggestions_model.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import '../constants.dart';
import '../widgets/custom_grid_view.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ResponsiveLayout.isMobile(context)
              ? defaultPadding*1.2
              : defaultPadding * 1.8,
        ),
        Text(
          "Our Suggestions",
          style: ResponsiveLayout.isDesktop(context)
              ? Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )
              : Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
        ),
        SizedBox(height: defaultPadding / 3),
        Text(
          "Discover the dishes we`re most passionate about,crafted with\n"
          " care and creativity just for you.",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(height: defaultPadding / 2),
        ResponsiveLayout(
          mobile: CustomGridView(
            items: suggestionsList,
            crossAxisCount: 2,
            aspectRatio: 1 / 1.7,
            mainAxisSpacing: defaultPadding / 2,
          ),
          mobileLarge: CustomGridView(
            items: suggestionsList,
            crossAxisCount: 2,
            aspectRatio: 2 / 3,
            mainAxisSpacing: defaultPadding / 2,
          ),
          tablet: CustomGridView(
            items: suggestionsList,
            crossAxisCount: 3,
            aspectRatio: 2 / 3,
            mainAxisSpacing: defaultPadding / 2,
          ),
          desktop: CustomGridView(
              items: suggestionsList,
              crossAxisCount: 4),
        ),
      ],
    );
  }
}
