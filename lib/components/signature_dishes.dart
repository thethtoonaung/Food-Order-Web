import 'package:flutter/material.dart';
import 'package:gourmet_haven/models/signature_dishes_model.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import 'package:gourmet_haven/widgets/custom_grid_view.dart';
import '../constants.dart';

class SignatureDishes extends StatelessWidget {
  const SignatureDishes({super.key});

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
          "Signature Dishes",
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
          "Signature Creations-Crafted with care. Designed to delight",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(height: defaultPadding / 2),
        ResponsiveLayout(
          mobile: CustomGridView(
            items: signatureDishesList,
            crossAxisCount: 2,
            aspectRatio: 1 / 1.7,
            mainAxisSpacing: defaultPadding / 2,
          ),
          mobileLarge: CustomGridView(
            items: signatureDishesList,
            crossAxisCount: 2,
            aspectRatio: 2 / 3,
            mainAxisSpacing: defaultPadding / 2,
          ),
          tablet: CustomGridView(
            items: signatureDishesList,
            crossAxisCount: 3,
            aspectRatio: 2 / 3,
            mainAxisSpacing: defaultPadding / 2,
          ),
          desktop: CustomGridView(
            items: signatureDishesList,
            crossAxisCount: 4,
          ),
        ),
        SizedBox(
          height: ResponsiveLayout.isMobile(context)
              ? defaultPadding*1.2
              : defaultPadding * 1.8,
        ),
      ],
    );
  }
}
