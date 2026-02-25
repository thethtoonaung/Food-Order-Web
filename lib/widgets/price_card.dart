import 'package:flutter/material.dart';
import 'package:gourmet_haven/models/card_data_model.dart';
import 'package:gourmet_haven/responsive/responsive_layout.dart';

import '../constants.dart';

class PriceCard extends StatefulWidget {
  final CardDataModel cardDataList;
  const PriceCard({super.key, required this.cardDataList});

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        transform: _isHovered
            ? (Matrix4.identity()..scale(1.03))
            : Matrix4.identity(),
        transformAlignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ]
              : [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
          shadowColor: Colors.grey,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 5 / 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          widget.cardDataList.imageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // SizedBox(height: defaultPadding / 2),
                    Spacer(),
                    Text(
                      widget.cardDataList.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: defaultPadding / 3),
                    Text(
                      widget.cardDataList.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall?.copyWith(color: Colors.black),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Positioned(
                top: -20,
                left: -20,
                child: Transform.rotate(
                  angle: -0.3,
                  child: CircleAvatar(
                    radius:
                        ResponsiveLayout.isDesktop(context)
                        ? 33
                        : 27,
                    backgroundColor: primaryColor,
                    child: Center(
                      child: Text(
                        "${widget.cardDataList.price!}€",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:gourmet_haven/models/card_data_model.dart';
// import '../constants.dart';
//
// class PriceCard extends StatefulWidget {
//   final CardDataModel cardDataList;
//   const PriceCard({super.key, required this.cardDataList});
//
//   @override
//   State<PriceCard> createState() => _PriceCardState();
// }
//
// class _PriceCardState extends State<PriceCard> {
//   bool _isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeOut,
//         transform:
//         _isHovered ? (Matrix4.identity()..scale(1.03)) : Matrix4.identity(),
//         transformAlignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: _isHovered
//               ? [
//             BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 15,
//                 offset: Offset(0, 8))
//           ]
//               : [
//             BoxShadow(
//                 color: Colors.grey.shade300,
//                 blurRadius: 5,
//                 offset: Offset(0, 4))
//           ],
//         ),
//         child: Card(
//           shape:
//           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           elevation: 5,
//           shadowColor: Colors.grey,
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(defaultPadding / 2),
//                 child: Column(
//                   children: [
//                     AspectRatio(
//                       aspectRatio: 5 / 4,
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.circular(30),
//                           child: Image.asset(
//                             widget.cardDataList.imageLink,
//                             fit: BoxFit.cover,
//                           )),
//                     ),
//                     SizedBox(height: defaultPadding / 2),
//                     Text(
//                       widget.cardDataList.title!,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style:
//                       Theme.of(context).textTheme.titleMedium?.copyWith(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: defaultPadding / 3),
//                     Text(
//                       widget.cardDataList.description,
//                       maxLines: 3,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodySmall
//                           ?.copyWith(color: Colors.black),
//                     ),
//                     SizedBox(height: defaultPadding / 2),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: -20,
//                 left: -20,
//                 child: Transform.rotate(
//                   angle: -0.3,
//                   child: CircleAvatar(
//                     radius: 35,
//                     backgroundColor: primaryColor,
//                     child: Center(
//                       child: Text(
//                         "${widget.cardDataList.price!}€",
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
