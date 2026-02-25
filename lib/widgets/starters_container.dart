import 'package:flutter/material.dart';
import 'package:gourmet_haven/constants.dart';
import 'package:gourmet_haven/models/card_data_model.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';
class StartersContainer extends StatelessWidget {
  final CardDataModel cardDataModel;

  const StartersContainer({super.key, required this.cardDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveLayout.isMobile(context)?240:280,
      width: ResponsiveLayout.isMobile(context)?240:280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(cardDataModel.imageLink,
              fit: BoxFit.cover,),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.transparent.withOpacity(0.4)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding/1.5,vertical: defaultPadding/1.5),
            child: Text(
              cardDataModel.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: Theme.of(context,).textTheme.bodyMedium?.copyWith(color: Colors.white,
              height: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
