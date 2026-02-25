import 'package:flutter/material.dart';
import 'package:gourmet_haven/models/card_data_model.dart';
import 'package:gourmet_haven/widgets/price_card.dart';

import '../constants.dart';
import '../responsive/responsive_layout.dart';

class CustomGridView extends StatelessWidget {
  final List<CardDataModel> items;
  final int? crossAxisCount;
  final double? aspectRatio;
  final double? mainAxisSpacing;
  const CustomGridView({
    super.key,
    this.crossAxisCount = 4,
    this.aspectRatio = 3 / 4,
    this.mainAxisSpacing = 0,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ResponsiveLayout.isTablet(context)
          ? 3
          : items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount!,
        childAspectRatio: aspectRatio!,
        mainAxisSpacing: mainAxisSpacing!,
        crossAxisSpacing: defaultPadding / 2,
      ),
      itemBuilder: (context, index) {
        return PriceCard(cardDataList: items[index]);
      },
    );
  }
}