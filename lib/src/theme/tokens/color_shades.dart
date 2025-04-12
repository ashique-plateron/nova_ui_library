import 'package:flutter/material.dart';

import 'color_tokens.dart';

/// Color shades with solid and alpha values
class ColorShades {
  final Map<String, Color> solid;
  final Map<String, double> alpha;
  final Color baseColor;

  const ColorShades({
    required this.solid,
    required this.alpha,
    required this.baseColor,
  });

  factory ColorShades.fromJson(Map<String, dynamic> json) {
    final Map<String, Color> solidColors = {};
    final Map<String, double> alphaValues = {};
    Color baseColor = Colors.transparent;

    if (json['solid'] != null) {
      (json['solid'] as Map<String, dynamic>).forEach((key, value) {
        final color = ColorTokens.colorFromHex(value['value']);
        solidColors[key] = color;
        // Use the 500 shade as the base color if available
        if (key == '500') {
          baseColor = color;
        }
      });
    }

    if (json['alpha'] != null) {
      (json['alpha'] as Map<String, dynamic>).forEach((key, value) {
        alphaValues[key] = double.parse(value.toString());
      });
    }

    return ColorShades(
      solid: solidColors,
      alpha: alphaValues,
      baseColor: baseColor,
    );
  }

  // Getters for solid colors
  Color get solid100 => solid['100'] ?? Colors.transparent;
  Color get solid200 => solid['200'] ?? Colors.transparent;
  Color get solid300 => solid['300'] ?? Colors.transparent;
  Color get solid400 => solid['400'] ?? Colors.transparent;
  Color get solid500 => solid['500'] ?? Colors.transparent;
  Color get solid600 => solid['600'] ?? Colors.transparent;
  Color get solid700 => solid['700'] ?? Colors.transparent;
  Color get solid800 => solid['800'] ?? Colors.transparent;
  Color get solid900 => solid['900'] ?? Colors.transparent;
  Color get solid850 => solid['850'] ?? Colors.transparent;

  // Getters for alpha colors
  Color get alpha10 => _getAlphaColor(10);
  Color get alpha20 => _getAlphaColor(20);
  Color get alpha30 => _getAlphaColor(30);
  Color get alpha40 => _getAlphaColor(40);
  Color get alpha50 => _getAlphaColor(50);
  Color get alpha60 => _getAlphaColor(60);
  Color get alpha70 => _getAlphaColor(70);
  Color get alpha80 => _getAlphaColor(80);
  Color get alpha90 => _getAlphaColor(90);
  Color get alphaBase =>
      alpha['base'] == null ? solid500 : _getAlphaColor(alpha['base'] ?? 0.0);
  Color get alpha05 => _getAlphaColor(5);

  // Helper method to create a color with alpha
  Color _getAlphaColor(double alphaValue) {
    return baseColor.withValues(alpha: alphaValue);
  }
}
