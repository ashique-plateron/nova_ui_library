import 'package:flutter/material.dart';

import '../tokens/design_tokens.dart';

/// Extension on BuildContext to easily access Nova design tokens
extension NovaThemeExtension on BuildContext {
  /// Get the Nova design tokens from the current theme
  NovaDesignTokens get novaTokens {
    final extension = Theme.of(this).extension<DesignTokensExtension>();
    if (extension == null) {
      throw FlutterError(
        'DesignTokensExtension not found in theme. Make sure to add it to your ThemeData.',
      );
    }
    return extension.tokens;
  }
}

/// Theme extension that holds the Nova design tokens
class DesignTokensExtension extends ThemeExtension<DesignTokensExtension> {
  final NovaDesignTokens tokens;

  const DesignTokensExtension({
    required this.tokens,
  });

  @override
  ThemeExtension<DesignTokensExtension> copyWith({
    NovaDesignTokens? tokens,
  }) {
    return DesignTokensExtension(
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  ThemeExtension<DesignTokensExtension> lerp(
    ThemeExtension<DesignTokensExtension>? other,
    double t,
  ) {
    if (other is! DesignTokensExtension) {
      return this;
    }
    return this;
  }
}
