import 'package:flutter/material.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import '../constants.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: (ResponsiveLayout.isDesktop(context))
            ? defaultPadding * 8
            : ResponsiveLayout.isMobile(context)
            ? defaultPadding/1.5
            : defaultPadding * 3
      ),
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            bottomLeft: Radius.circular(70),
          ),
        ),
        height: (ResponsiveLayout.isDesktop(context))?600:500,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
              child: Text(
                "About Us",
                style: ResponsiveLayout.isDesktop(context)?Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ):Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'welcome to Gourmet Haven, where passion for food mocts ancoptional\n'
                'dining Cur resturant is dedicated to crafting unforgettoble culinary\n'
                'experiences, offering a menu inspired by gourmat classics and modern\n'
                'twists.From succulant Lobster Bisquo and truffle-infusod dishes to\n'
                'hearty ribs and perfoctty seared scallops, every bite is a celabration of\n'
                'flavour and quality. At Gourmet Haven, we believe in using the frechest\n'
                'ingrediants, paired with creativity and care, to bring you a dining\n'
                'experience that feels both',
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: defaultPadding),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                ),
                child: Image.asset(
                  'assets/images/about_img.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
