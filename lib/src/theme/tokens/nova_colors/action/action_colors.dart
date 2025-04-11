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
        defaultColor: tokens.novaRage.solid600,
        hover: tokens.novaRage.solid700,
        pressed: tokens.novaRage.solid800,
        disabled: tokens.novaRage.solid300,
      ),
      border: BorderColors(
        defaultColor: tokens.novaRage.solid800,
        hover: tokens.novaRage.solid800,
        pressed: tokens.novaRage.solid800,
        disabled: tokens.novaRage.solid400,
      ),
    );
  }
  factory BaseColors.secondaryBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        defaultColor: tokens.novaRage.alpha10,
        hover: tokens.novaRage.alpha20,
        pressed: tokens.novaRage.alpha40,
        disabled: tokens.novaRage.alpha05,
      ),
      border: BorderColors(
        defaultColor: tokens.novaRage.alphaBase,
        hover: tokens.novaRage.alpha05,
        pressed: tokens.novaRage.alpha10,
        disabled: tokens.novaRage.alphaBase,
      ),
    );
  }

  factory BaseColors.alternateBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        defaultColor: tokens.universalWhite,
        hover: tokens.morningFog.solid850,
        pressed: tokens.morningFog.solid850,
        disabled: tokens.morningFog.solid900,
      ),
      border: BorderColors(
        defaultColor: tokens.morningFog.solid600,
        hover: tokens.morningFog.solid600,
        pressed: tokens.morningFog.solid500,
        disabled: tokens.morningFog.solid700,
      ),
    );
  }
  factory BaseColors.tertiaryBaseColorsFromToken(ColorTokens tokens) {
    return BaseColors(
      background: BackgroundActionColors(
        defaultColor: tokens.universalWhite,
        hover: tokens.novaRage.alphaBase,
        pressed: tokens.novaRage.alpha05,
        disabled: tokens.universalWhite,
      ),
      border: BorderColors(
        defaultColor: tokens.novaRage.solid600,
        hover: tokens.novaRage.solid600,
        pressed: tokens.novaRage.solid700,
        disabled: tokens.novaRage.solid300,
      ),
    );
  }
}

abstract class PrimaryActionColors {
  final Color defaultColor;
  final Color hover;
  final Color pressed;
  final Color disabled;

  PrimaryActionColors({
    required this.defaultColor,
    required this.hover,
    required this.pressed,
    required this.disabled,
  });
}

class BackgroundActionColors extends PrimaryActionColors {
  BackgroundActionColors({
    required super.defaultColor,
    required super.hover,
    required super.pressed,
    required super.disabled,
  });
}

class BorderColors extends PrimaryActionColors {
  BorderColors({
    required super.defaultColor,
    required super.hover,
    required super.pressed,
    required super.disabled,
  });
}
