import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nova_ui_library/src/theme/tokens/font_family.dart';

import 'border_radius_tokens.dart';
import 'color_tokens.dart';
import 'font_size_tokens.dart';
import 'letter_spacing_tokens.dart';
import 'line_height_tokens.dart';
import 'spacing_tokens.dart';

/// Main class for accessing all design tokens
class NovaDesignTokens {
  final BorderRadiusTokens borderRadius;
  final ColorTokens colors;
  final FontSizeTokens fontSize;
  final LineHeightTokens lineHeight;
  final LetterSpacingTokens letterSpacing;
  final SpacingTokens spacing;
  final NovaFontFamily fontFamily;

  const NovaDesignTokens({
    required this.borderRadius,
    required this.colors,
    required this.fontSize,
    required this.lineHeight,
    required this.letterSpacing,
    required this.spacing,
    required this.fontFamily,
  });

  static Future<NovaDesignTokens> fromAsset() async {
    final String jsonString = await rootBundle.loadString(
      'packages/nova_ui_library/assets/design-tokens.json',
    );
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    return NovaDesignTokens(
      borderRadius: BorderRadiusTokens.fromJson(jsonMap['border-radius']),
      colors: ColorTokens.fromJson(jsonMap['colors']),
      fontSize: FontSizeTokens.fromJson(jsonMap['font-size']),
      lineHeight: LineHeightTokens.fromJson(jsonMap['line-height']),
      letterSpacing: LetterSpacingTokens.fromJson(jsonMap['letter-spacing']),
      spacing: SpacingTokens.fromJson(jsonMap['spacing']),
      //! Add font family tokens here
      fontFamily: NovaFontFamily(inter: 'Inter'),
    );
  }
}
