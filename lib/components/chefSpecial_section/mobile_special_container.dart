import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/chef_special_container.dart';
import '../../widgets/custom_elevated_button.dart';
class MobileSpecialContainer extends StatelessWidget {
  const MobileSpecialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "Chef`s Special",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: defaultPadding / 3),
        Text(
          "Indulge in Our Chef`s Special-Exquisite Dishes Crafted with\n fresh ingredients"
              "and a Dash of Creativity!",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black)
        ),
        SizedBox(height: defaultPadding/2),
        AspectRatio(
            aspectRatio: 2.4,
            child: ChefSpecialContainer(imageLink: 'assets/images/special.jpg',
              title: 'Seafood Paella',
              description: 'A Spanish classic with saffron-infused rice\nshrimp, mussels, and chorizo.',
              button: CustomElevatedButton(text: "View Menu", onPressed: (){}),
              mainAxisAlignment: MainAxisAlignment.start,
            )),
        SizedBox(height: defaultPadding/2),

            AspectRatio(
                aspectRatio: 2.4,
                child: ChefSpecialContainer(imageLink: 'assets/images/special1.jpg',
                  title: 'Lobster Bisque',
                  description: 'A rich and creamy soup made with tender\nlobster.',
                )
            ),
      ],
    );
  }
}
