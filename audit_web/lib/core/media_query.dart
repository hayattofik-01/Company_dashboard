import 'package:flutter/material.dart';

class UIConverter {
  
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double scaleFactorWidth(BuildContext context) {
    return getDeviceWidth(context) ;
  }

  static double scaleFactorHeight(BuildContext context) {
    return getDeviceHeight(context);
  }

  static double getComponentWidth(BuildContext context, double width) {
    return width * scaleFactorWidth(context);
  }

  static double getComponentHeight(BuildContext context, double height) {
    return height * scaleFactorHeight(context);
  }

  static double textSize(BuildContext context, double size) {
    return size * scaleFactorWidth(context);
  }
}