import 'dart:convert';

import 'package:flutter/services.dart';

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

  const NovaDesignTokens({
    required this.borderRadius,
    required this.colors,
    required this.fontSize,
    required this.lineHeight,
    required this.letterSpacing,
    required this.spacing,
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
    );
  }

  // Add a method to ensure the fonts are loaded
  static Future<void> loadFonts() async {
    // This is a workaround to ensure fonts are loaded
    // Flutter doesn't provide a direct API to preload fonts
    // But we can create temporary FontLoader instances to ensure they're loaded
    final interLoader = FontLoader('Inter')
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-Black.ttf'),
      )
      ..addFont(
        rootBundle.load('packages/nova_ui_library/assets/fonts/Inter-Bold.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-ExtraBold.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-ExtraLight.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-Light.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-Medium.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-Regular.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/Inter-SemiBold.ttf'),
      )
      ..addFont(
        rootBundle.load('packages/nova_ui_library/assets/fonts/Inter-Thin.ttf'),
      );
    final robotoLoader = FontLoader('RobotoMono')
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/RobotoMono-Light.ttf'),
      )
      ..addFont(
        rootBundle.load(
            'packages/nova_ui_library/assets/fonts/RobotoMono-ExtraLight.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/RobotoMono-Light.ttf'),
      )
      ..addFont(
        rootBundle.load(
            'packages/nova_ui_library/assets/fonts/RobotoMono-Regular.ttf'),
      )
      ..addFont(
        rootBundle.load(
            'packages/nova_ui_library/assets/fonts/RobotoMono-Medium.ttf'),
      )
      ..addFont(
        rootBundle.load(
            'packages/nova_ui_library/assets/fonts/RobotoMono-SemiBold.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/RobotoMono-Bold.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/RobotoMono-Bold.ttf'),
      )
      ..addFont(
        rootBundle
            .load('packages/nova_ui_library/assets/fonts/RobotoMono-Bold.ttf'),
      );

    await interLoader.load();
    await robotoLoader.load();
  }
}
