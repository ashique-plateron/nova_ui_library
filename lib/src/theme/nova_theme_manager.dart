import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

import 'tokens/nova_colors/nova_colors.dart';

/// A singleton class that manages Nova UI Library theme, text styles, and button styles
class NovaThemeManager {
  static NovaThemeManager? _instance;
  late NovaDesignTokens _designTokens;
  late ThemeData _theme;
  late NovaColors _colors;
  late AppTypoGraphy _textStyles;
  bool _isInitialized = false;

  /// Private constructor
  NovaThemeManager._();

  /// Factory constructor to get the singleton instance
  static NovaThemeManager get instance {
    _instance ??= NovaThemeManager._();
    return _instance!;
  }

  /// Initialize the theme manager with design tokens
  Future<void> initialize() async {
    if (_isInitialized) return;
    _designTokens = await NovaDesignTokens.fromAsset();
    _theme = _createTheme();
    _colors = NovaColors.fromToken(tokens: _designTokens.colors);
    _textStyles = AppTypoGraphy.fromToken(_designTokens);
    _isInitialized = true;
  }

  void _assertInitialized() {
    if (!_isInitialized) {
      throw StateError(
        'NovaThemeManager is not initialized. Call initialize() first.',
      );
    }
  }

  /// Get the current theme
  ThemeData get theme {
    _assertInitialized();
    return _theme;
  }

  NovaColors get colors {
    _assertInitialized();
    return _colors;
  }

  AppTypoGraphy get textStyles {
    _assertInitialized();
    return _textStyles;
  }

  /// Create the theme based on design tokens
  ThemeData _createTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _designTokens.colors.novaRage.baseColor,
        primary: _designTokens.colors.novaRage.baseColor,
        secondary: _designTokens.colors.novaBlush.baseColor,
        background: _designTokens.colors.morningFog.baseColor,
        surface: _designTokens.colors.universalWhite,
        error: _designTokens.colors.novaScarlet,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: _designTokens.fontSize.xl5,
          letterSpacing: _designTokens.letterSpacing.defaultValue,
          height: _designTokens.lineHeight.xl5Paragraph,
        ),
        displayMedium: TextStyle(
          fontSize: _designTokens.fontSize.xl4,
          letterSpacing: _designTokens.letterSpacing.defaultValue,
          height: _designTokens.lineHeight.xl4Paragraph,
        ),
        displaySmall: TextStyle(
          fontSize: _designTokens.fontSize.xl3,
          letterSpacing: _designTokens.letterSpacing.defaultValue,
          height: _designTokens.lineHeight.xl3Paragraph,
        ),
        // Add other text styles as needed
      ),
      extensions: [
        DesignTokensExtension(tokens: _designTokens),
      ],
    );
  }
}
