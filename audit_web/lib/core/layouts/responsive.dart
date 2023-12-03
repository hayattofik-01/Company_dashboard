import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return screenSize.width < 850 || screenSize.height < 600;
  }

  static bool isTablet(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return screenSize.width < 1100 &&
        screenSize.width >= 850 &&
        screenSize.height >= 600;
  }

  static bool isDesktop(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return screenSize.width >= 1100 && screenSize.height >= 600;
  }

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context) && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}