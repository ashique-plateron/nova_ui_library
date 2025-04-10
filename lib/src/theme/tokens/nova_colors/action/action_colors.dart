import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/tokens/color_tokens.dart';

class ActionColors {
  final BaseColors primary;
  final BaseColors secondary;
  final BaseColors alternate;
  final BaseColors tertiary;

  ActionColors({
    required this.primary,
    required this.secondary,
    required this.alternate,
    required this.tertiary,
  });

  factory ActionColors.fromToken(ColorTokens tokens) {
    return ActionColors(
      primary: BaseColors.primaryBaseColorsFromToken(tokens),
      secondary: BaseColors.secondaryBaseColorsFromToken(tokens),
      alternate: BaseColors.alternateBaseColorsFromToken(tokens),
      tertiary: BaseColors.tertiaryBaseColorsFromToken(tokens),
    );
  }
}

class BaseColors {
  final BackgroundActionColors background;
  final BorderColors border;

  BaseColors({
    required this.background,
    required this.border,
  });

  factory BaseColors.primaryBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        primaryDefault: tokens.novaRage.solid600,
        primaryHover: tokens.novaRage.solid700,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid300,
      ),
      border: BorderColors(
        primaryDefault: tokens.novaRage.solid800,
        primaryHover: tokens.novaRage.solid800,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid400,
      ),
    );
  }
  factory BaseColors.secondaryBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        primaryDefault: tokens.novaRage.alpha10,
        primaryHover: tokens.novaRage.alpha20,
        primaryPressed: tokens.novaRage.alpha40,
        primaryDisabled: tokens.novaRage.alpha05,
      ),
      border: BorderColors(
        primaryDefault: tokens.novaRage.alphaBase,
        primaryHover: tokens.novaRage.alpha05,
        primaryPressed: tokens.novaRage.alpha10,
        primaryDisabled: tokens.novaRage.alphaBase,
      ),
    );
  }

  factory BaseColors.alternateBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        primaryDefault: tokens.novaRage.solid600,
        primaryHover: tokens.novaRage.solid700,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid300,
      ),
      border: BorderColors(
        primaryDefault: tokens.novaRage.solid800,
        primaryHover: tokens.novaRage.solid800,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid400,
      ),
    );
  }
  factory BaseColors.tertiaryBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        primaryDefault: tokens.novaRage.solid600,
        primaryHover: tokens.novaRage.solid700,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid300,
      ),
      border: BorderColors(
        primaryDefault: tokens.novaRage.solid800,
        primaryHover: tokens.novaRage.solid800,
        primaryPressed: tokens.novaRage.solid800,
        primaryDisabled: tokens.novaRage.solid400,
      ),
    );
  }
}

abstract class PrimaryActionColors {
  final Color primaryDefault;
  final Color primaryHover;
  final Color primaryPressed;
  final Color primaryDisabled;

  PrimaryActionColors({
    required this.primaryDefault,
    required this.primaryHover,
    required this.primaryPressed,
    required this.primaryDisabled,
  });
}

class BackgroundActionColors extends PrimaryActionColors {
  BackgroundActionColors({
    required super.primaryDefault,
    required super.primaryHover,
    required super.primaryPressed,
    required super.primaryDisabled,
  });
}

class BorderColors extends PrimaryActionColors {
  BorderColors({
    required super.primaryDefault,
    required super.primaryHover,
    required super.primaryPressed,
    required super.primaryDisabled,
  });
}
