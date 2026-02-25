import 'package:flutter/material.dart';
import 'package:gourmet_haven/models/starters_model.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
import 'package:gourmet_haven/widgets/starters_container.dart';
import '../constants.dart';

class Starters extends StatelessWidget {
  const Starters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Starters",
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
          "Small Bites, Big Flavour-The Perfect Start to Your Meal",
          textAlign: TextAlign.start,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(height: defaultPadding / 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(startersList.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: defaultPadding / 2),
                child: StartersContainer(cardDataModel: startersList[index]),
              );
            }),
          ),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
