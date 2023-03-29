import 'package:flutter/material.dart';

enum Font { jost, gothic }

abstract class AppTextStyles {
  static String _getFontFamily(Font font) {
    switch (font) {
      case Font.gothic:
        return 'GothicA1';
      case Font.jost:
        return 'Jost';
      default:
        return 'GothicA1';
    }
  }

  static TextStyle regular({
    required double fontSize,
    required Color color,
    required Font font,
  }) {
    return TextStyle(
      color: color,
      fontFamily: _getFontFamily(font),
      fontSize: fontSize,
      letterSpacing: -0.41,
    );
  }

  static TextStyle medium({
    required double fontSize,
    required Color color,
    required Font font,
  }) {
    return TextStyle(
      color: color,
      fontFamily: _getFontFamily(font),
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.41,
    );
  }

  static TextStyle semiBold({
    required double fontSize,
    required Color color,
    required Font font,
  }) {
    return TextStyle(
      color: color,
      fontFamily: _getFontFamily(font),
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
    );
  }

  static TextStyle bold({
    required double fontSize,
    required Color color,
    required Font font,
  }) {
    return TextStyle(
      color: color,
      fontFamily: _getFontFamily(font),
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
    );
  }
}
