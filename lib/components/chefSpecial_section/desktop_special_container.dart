import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/chef_special_container.dart';
import '../../widgets/custom_elevated_button.dart';

class DesktopSpecialContainer extends StatelessWidget {
  const DesktopSpecialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Chef`s Special",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: defaultPadding / 3),
        Text(
          "Indulge in Our Chef`s Special-Exquisite Dishes Crafted with\n fresh ingredients"
          "and a Dash of Creativity!",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(height: defaultPadding / 2),
        AspectRatio(
          aspectRatio: 2.6,
          child: ChefSpecialContainer(
            imageLink: 'assets/images/special.jpg',
            title: 'Seafood Paella',
            titleStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            description:
                'A Spanish classic with saffron-infused rice\nshrimp, mussels, and chorizo.',
            button: CustomElevatedButton(text: "View Menu", onPressed: () {}),
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 2.2,
                child: ChefSpecialContainer(
                  imageLink: 'assets/images/special1.jpg',
                  title: 'Lobster Bisque',
                  description:
                      'A rich and creamy soup made with tender\nlobster.',
                ),
              ),
            ),
            SizedBox(width: defaultPadding / 2),
            Expanded(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 2.2,
                child: ChefSpecialContainer(
                  imageLink: 'assets/images/special2.jpg',
                  title: 'Beef Burger',
                  description:
                      'Juicy beef patty topped with tangy pickles, fresh\n'
                      'onions, signature burger sauce, nestled in at,\n'
                      'toasted brioche bun.',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
