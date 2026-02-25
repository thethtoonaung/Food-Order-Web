import 'dart:ui';

const Color primaryColor=Color(0xFF8B0E0E);
const Color darkColor=Color(0xFF020D04);
const Color bgColor=Color(0xFFFFF4EE);
const Color bodyTextColor=Color(0xFFFFF4EE);

const defaultPadding = 40.0;
const maxWidth = 1440.0;

class ImageAssets{

  // Hero Image
  static String hero="assets/images/hero_banner.jpg";

  // Chef Special Images
  static String special1="assets/images/special.jpg";
  static String special2="assets/images/special1.jpg";
  static String special3="assets/images/special2.jpg";

  // Suggestion Images
  static String suggestion1="assets/images/suggestion1.jpg";
  static String suggestion2="assets/images/suggestion2.jpg";
  static String suggestion3="assets/images/suggestion3.jpg";
  static String suggestion4="assets/images/suggestion4.jpg";

  // SignatureDishes Images
  static String signatureDishes1="assets/images/signature_dishes1.jpg";
  static String signatureDishes2="assets/images/signature_dishes2.jpg";
  static String signatureDishes3="assets/images/signature_dishes3.jpg";
  static String signatureDishes4="assets/images/signature_dishes4.jpg";

}


class NavCallbacks {
  final VoidCallback onSpecialsTap;
  final VoidCallback onStartersTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSocialTap;

  const NavCallbacks({
    required this.onSpecialsTap,
    required this.onStartersTap,
    required this.onAboutTap,
    required this.onSocialTap,
  });
}

