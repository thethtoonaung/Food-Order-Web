// import 'package:flutter/material.dart';
// import 'package:gourmet_haven/constants.dart';
// import 'package:gourmet_haven/responsive/responsive_layout.dart';
//
// class ChefSpecialContainer extends StatelessWidget {
//   final String imageLink;
//   final String? title;
//   final String description;
//   final Widget? button;
//   final TextStyle? titleStyle;
//   final MainAxisAlignment mainAxisAlignment;
//   const ChefSpecialContainer({
//     super.key,
//     required this.imageLink,
//     this.title,
//     required this.description,
//     this.button,
//     this.mainAxisAlignment=MainAxisAlignment.start, this.titleStyle,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),),
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30),
//             child: Image(image: AssetImage(imageLink),
//             fit: BoxFit.cover,),
//           ),
//           Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                  color: Colors.transparent.withOpacity(0.4)
//               ),
//               ),
//           Padding(
//             padding: const EdgeInsets.all(defaultPadding/2),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: mainAxisAlignment,
//               children: [
//                 if (title != null) ...[
//                   Text(
//                     title!,
//                     style: titleStyle ??
//                         (ResponsiveLayout.isMobile(context)
//                             ? Theme.of(context).textTheme.titleMedium?.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         )
//                             : Theme.of(context).textTheme.titleLarge?.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         )),
//                   ),
//                   const SizedBox(height: defaultPadding / 3),
//                 ],
//
//                 Text(
//                   description,
//                   maxLines: ResponsiveLayout.isMobile(context)?2:3,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.start,
//                   style: Theme.of(
//                     context,
//                   ).textTheme.bodySmall?.copyWith(color: Colors.white),
//                 ),
//                 if(button!=null&&!ResponsiveLayout.isMobile(context))...[
//                 SizedBox(height: defaultPadding / 3),
//                   button!,
//                 ]
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:gourmet_haven/constants.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';

class ChefSpecialContainer extends StatelessWidget {
  final String imageLink;
  final String? title;
  final String description;
  final Widget? button;
  final TextStyle? titleStyle;
  final MainAxisAlignment mainAxisAlignment;
  const ChefSpecialContainer({
    super.key,
    required this.imageLink,
    this.title,
    required this.description,
    this.button,
    this.mainAxisAlignment=MainAxisAlignment.start, this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(image: AssetImage(imageLink),
              fit: BoxFit.cover,),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent.withOpacity(0.4)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: mainAxisAlignment,
              children: [
                if (title != null) ...[
                  Text(
                    title!,
                    style: titleStyle ??
                             Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )
                  ),
                  const SizedBox(height: defaultPadding / 3),
                ],

                Text(
                  description,
                  maxLines: ResponsiveLayout.isMobile(context)?2:3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
                if(button!=null&&!ResponsiveLayout.isMobile(context))...[
                  SizedBox(height: defaultPadding / 3),
                  button!,
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
