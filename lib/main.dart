import 'package:flutter/material.dart';
import 'package:gourmet_haven/screens/main_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: bodyTextColor,
          fontFamily: 'Tan',
        ).copyWith(
          bodyLarge: const TextStyle(fontFamily: 'Tan', color: bodyTextColor),
          bodyMedium: const TextStyle(fontFamily: 'Tan', color: bodyTextColor),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:gourmet_haven/screens/main_screen.dart';
// import 'constants.dart';
//
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode, // Only enable in debug/profile mode
//       builder: (context) => const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       useInheritedMediaQuery: true, // Required for DevicePreview
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.locale(context), // Add locale from DevicePreview
//       builder: DevicePreview.appBuilder, // Add builder from DevicePreview
//       theme: ThemeData.light().copyWith(
//         primaryColor: primaryColor,
//         scaffoldBackgroundColor: bgColor,
//         canvasColor: bgColor,
//         textTheme: Theme.of(context).textTheme.apply(
//           bodyColor: bodyTextColor,
//           fontFamily: 'Tan',
//         ).copyWith(
//           bodyLarge:
//           const TextStyle(fontFamily: 'Tan', color: bodyTextColor),
//           bodyMedium:
//           const TextStyle(fontFamily: 'Tan', color: bodyTextColor),
//         ),
//       ),
//       home: const MainScreen(),
//     );
//   }
// }
