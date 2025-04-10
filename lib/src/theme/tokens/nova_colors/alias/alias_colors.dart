import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/tokens/color_tokens.dart';

class AliasColors {
  final IconColors icon;
  final TypeColors type;
  final BackgroundAliasColors background;

  AliasColors({
    required this.icon,
    required this.type,
    required this.background,
  });

  factory AliasColors.fromToken(ColorTokens tokens) {
    return AliasColors(
      icon: IconColors.fromToken(tokens),
      type: TypeColors.fromToken(tokens),
      background: BackgroundAliasColors.fromToken(tokens),
    );
  }
}

class IconColors {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color invertPrimary;
  final Color invertSecondary;
  final Color invertTertiary;
  final Color brand;
  final Color warn;
  final Color positive;
  final Color negative;

  IconColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.invertPrimary,
    required this.invertSecondary,
    required this.invertTertiary,
    required this.brand,
    required this.warn,
    required this.positive,
    required this.negative,
  });

  factory IconColors.fromToken(ColorTokens tokens) {
    return IconColors(
      primary: tokens.midnightBlack.solid900,
      secondary: tokens.midnightBlack.solid600,
      tertiary: tokens.midnightBlack.solid400,
      invertPrimary: tokens.morningFog.solid900,
      invertSecondary: tokens.morningFog.alpha40,
      invertTertiary: tokens.morningFog.alpha20,
      brand: tokens.novaRage.solid500,
      warn: tokens.novaBronze,
      positive: tokens.novaFern,
      negative: tokens.novaScarlet,
    );
  }
}

class TypeColors {
  final Color brandPrimary;
  final Color primary;
  final Color secondary;
  final Color placeholder;
  final Color invertPrimary;
  final Color invertSecondary;
  final Color invertPlaceholder;
  final Color positive;
  final Color warn;
  final Color negative;

  final Color neutralTone;
  final Color brandPrimaryDisable;

  TypeColors({
    required this.brandPrimary,
    required this.primary,
    required this.secondary,
    required this.placeholder,
    required this.invertPrimary,
    required this.invertSecondary,
    required this.invertPlaceholder,
    required this.positive,
    required this.warn,
    required this.negative,
    required this.neutralTone,
    required this.brandPrimaryDisable,
  });

  factory TypeColors.fromToken(ColorTokens tokens) {
    return TypeColors(
      brandPrimary: tokens.novaRage.solid600,
      primary: tokens.midnightBlack.solid900,
      secondary: tokens.midnightBlack.solid500,
      placeholder: tokens.midnightBlack.solid300,
      invertPrimary: tokens.morningFog.solid900,
      invertSecondary: tokens.morningFog.alpha60,
      invertPlaceholder: tokens.morningFog.alpha40,
      positive: tokens.novaFern,
      warn: tokens.novaBronze,
      negative: tokens.novaScarlet,
      neutralTone: tokens.novaDeep,
      brandPrimaryDisable: tokens.novaRage.solid200,
    );
  }
}

class BackgroundAliasColors {
  final Color pageDefault;
  final Color pageLight;
  final Color pageDim;
  final Color pageDimmest;

  BackgroundAliasColors({
    required this.pageDefault,
    required this.pageLight,
    required this.pageDim,
    required this.pageDimmest,
  });

  factory BackgroundAliasColors.fromToken(ColorTokens tokens) {
    return BackgroundAliasColors(
      pageDefault: tokens.universalWhite,
      pageLight: tokens.morningFog.solid900,
      pageDim: tokens.morningFog.solid850,
      pageDimmest: tokens.morningFog.solid800,
    );
  }
}
