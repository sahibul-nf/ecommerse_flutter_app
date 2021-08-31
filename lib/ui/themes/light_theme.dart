part of 'themes.dart';

class LightTheme {
  const LightTheme();

  static const double h1 = 24;
  static const double h2 = 22;
  static const double h3 = 20;
  static const double h4 = 18;
  static const double h5 = 16;
  static const double h6 = 14;

  static const Color color1 = const Color(0xff4a56e2);
  static const Color color2 = const Color(0xff8fa7ee);
  static const Color color3 = const Color(0xfff66645);
  static const Color color4 = const Color(0xffFFC37D);
  static const Color color5 = const Color(0xff1d2635);
  static const Color color6 = const Color(0xffa1a3a6);
  static const Color color7 = const Color(0xffE3E6FF);
  static const Color color8 = const Color(0xfff6f7f8);

  static EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 24, vertical: 20);

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}