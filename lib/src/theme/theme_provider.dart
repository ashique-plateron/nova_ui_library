import 'package:flutter/material.dart';

import 'tokens/design_tokens.dart';
import 'nova_theme_extension.dart';

class ThemeProvider {
  late ThemeData _theme;
  late NovaDesignTokens _tokens;
  ThemeData get theme => _theme;

  Future<void> initialize() async {
    _tokens = await NovaDesignTokens.fromAsset();
    _theme = _createTheme();
  }

  ThemeData _createTheme() {
    return ThemeData(
      useMaterial3: true,
      extensions: [
        DesignTokensExtension(tokens: _tokens),
      ],
      colorScheme: ColorScheme.light(
        primary: _tokens.colors.novaDeep,
        secondary: _tokens.colors.novaNebula,
        error: _tokens.colors.novaScarlet,
        surface: _tokens.colors.universalWhite,
        onPrimary: _tokens.colors.universalWhite,
        onSecondary: _tokens.colors.universalWhite,
        onError: _tokens.colors.universalWhite,
        onSurface: _tokens.colors.midnightBlack.solid900,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: _tokens.fontSize.xl5,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xl5Paragraph / _tokens.fontSize.xl5,
        ),
        displayMedium: TextStyle(
          fontSize: _tokens.fontSize.xl4,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xl4Paragraph / _tokens.fontSize.xl4,
        ),
        displaySmall: TextStyle(
          fontSize: _tokens.fontSize.xl3,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xl3Paragraph / _tokens.fontSize.xl3,
        ),
        headlineLarge: TextStyle(
          fontSize: _tokens.fontSize.xl2,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xl2Paragraph / _tokens.fontSize.xl2,
        ),
        headlineMedium: TextStyle(
          fontSize: _tokens.fontSize.xl,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xlParagraph / _tokens.fontSize.xl,
        ),
        headlineSmall: TextStyle(
          fontSize: _tokens.fontSize.l,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.lParagraph / _tokens.fontSize.l,
        ),
        titleLarge: TextStyle(
          fontSize: _tokens.fontSize.m,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.mParagraph / _tokens.fontSize.m,
        ),
        titleMedium: TextStyle(
          fontSize: _tokens.fontSize.s,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.sParagraph / _tokens.fontSize.s,
        ),
        titleSmall: TextStyle(
          fontSize: _tokens.fontSize.xs,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xsParagraph / _tokens.fontSize.xs,
        ),
        bodyLarge: TextStyle(
          fontSize: _tokens.fontSize.m,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.mParagraph / _tokens.fontSize.m,
        ),
        bodyMedium: TextStyle(
          fontSize: _tokens.fontSize.s,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.sParagraph / _tokens.fontSize.s,
        ),
        bodySmall: TextStyle(
          fontSize: _tokens.fontSize.xs,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xsParagraph / _tokens.fontSize.xs,
        ),
        labelLarge: TextStyle(
          fontSize: _tokens.fontSize.s,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.sParagraph / _tokens.fontSize.s,
        ),
        labelMedium: TextStyle(
          fontSize: _tokens.fontSize.xs,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xsParagraph / _tokens.fontSize.xs,
        ),
        labelSmall: TextStyle(
          fontSize: _tokens.fontSize.xxs,
          letterSpacing: _tokens.letterSpacing.defaultValue,
          height: _tokens.lineHeight.xxsParagraph / _tokens.fontSize.xxs,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(_tokens.spacing.x3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          borderSide: BorderSide(color: _tokens.colors.midnightBlack.solid300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          borderSide: BorderSide(color: _tokens.colors.novaDeep),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          borderSide: BorderSide(color: _tokens.colors.novaScarlet),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(
            horizontal: _tokens.spacing.x4,
            vertical: _tokens.spacing.x3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: _tokens.spacing.x4,
            vertical: _tokens.spacing.x3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: _tokens.spacing.x4,
            vertical: _tokens.spacing.x3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_tokens.borderRadius.m),
          ),
        ),
      ),
    );
  }
}
