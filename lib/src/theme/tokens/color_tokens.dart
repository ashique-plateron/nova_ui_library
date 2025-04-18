import 'package:flutter/material.dart';

import 'color_shades.dart';

/// Color tokens with shades
class ColorTokens {
  final ColorShades midnightBlack;
  final ColorShades lilacHaze;
  final ColorShades novaRage;
  final ColorShades novaBlush;
  final ColorShades morningFog;
  final ColorShades novaSky;
  final ColorShades novaFury;
  final ColorShades novaLeaf;
  final ColorShades novaGold;
  final Color novaBronze;
  final Color novaDeep;
  final Color novaFern;
  final Color novaNebula;
  final Color novaScarlet;
  final Color novaSplash;
  final Color universalBlack;
  final Color universalWhite;

  const ColorTokens({
    required this.midnightBlack,
    required this.lilacHaze,
    required this.novaRage,
    required this.novaBlush,
    required this.morningFog,
    required this.novaBronze,
    required this.novaDeep,
    required this.novaFern,
    required this.novaNebula,
    required this.novaScarlet,
    required this.novaSplash,
    required this.universalBlack,
    required this.universalWhite,
    required this.novaSky,
    required this.novaFury,
    required this.novaLeaf,
    required this.novaGold,
  });

  factory ColorTokens.fromJson(Map<String, dynamic> json) {
    return ColorTokens(
      midnightBlack: ColorShades.fromJson(json['midnight-black']),
      lilacHaze: ColorShades.fromJson(json['lilac-haze']),
      novaRage: ColorShades.fromJson(json['nova-rage']),
      novaBlush: ColorShades.fromJson(json['nova-blush']),
      morningFog: ColorShades.fromJson(json['morning-fog']),
      novaBronze: colorFromHex(json['nova-bronze']['value']),
      novaDeep: colorFromHex(json['nova-deep']['value']),
      novaFern: colorFromHex(json['nova-fern']['value']),
      novaNebula: colorFromHex(json['nova-nebula']['value']),
      novaScarlet: colorFromHex(json['nova-scarlet']['value']),
      novaSplash: colorFromHex(json['nova-splash']['value']),
      universalBlack: colorFromHex(json['universal-black']['value']),
      universalWhite: colorFromHex(json['universal-white']['value']),
      novaSky: ColorShades.fromJson(json['nova-sky']),
      novaFury: ColorShades.fromJson(json['nova-fury']),
      novaLeaf: ColorShades.fromJson(json['nova-leaf']),
      novaGold: ColorShades.fromJson(json['nova-gold']),
    );
  }

  static Color colorFromHex(String colorString) {
    if (colorString.startsWith('rgba')) {
      final rgbaMatch = RegExp(r'rgba\((\d+),\s*(\d+),\s*(\d+),\s*([\d.]+)\)')
          .firstMatch(colorString);
      if (rgbaMatch != null) {
        final r = int.parse(rgbaMatch.group(1)!);
        final g = int.parse(rgbaMatch.group(2)!);
        final b = int.parse(rgbaMatch.group(3)!);
        final a = (double.parse(rgbaMatch.group(4)!) * 255).round();
        return Color.fromARGB(a, r, g, b);
      }
    }

    String hexColor = colorString.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
