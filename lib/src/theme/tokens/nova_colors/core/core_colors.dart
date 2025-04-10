import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/tokens/color_tokens.dart';

class CoreColors {
  final Color novaRage;
  final Color novaBlush;
  final Color morningFog;
  final Color midnightBlack;
  final Color lilacHaze;
  final SemanticColors semantics;

  CoreColors({
    required this.novaRage,
    required this.novaBlush,
    required this.morningFog,
    required this.midnightBlack,
    required this.lilacHaze,
    required this.semantics,
  });

  factory CoreColors.fromToken(ColorTokens tokens) {
    return CoreColors(
      novaRage: tokens.novaRage.baseColor,
      novaBlush: tokens.novaBlush.baseColor,
      morningFog: tokens.morningFog.baseColor,
      midnightBlack: tokens.midnightBlack.baseColor,
      lilacHaze: tokens.lilacHaze.baseColor,
      semantics: SemanticColors(
        novaSky: tokens.novaSky.baseColor,
        novaSkyAplha10: tokens.novaSky.alpha10,
        novaSkyAplha20: tokens.novaSky.alpha20,
        novaSkyAplha40: tokens.novaSky.alpha40,
        novaFury: tokens.novaFury.baseColor,
        novaFuryAlpha10: tokens.novaFury.alpha10,
        novaFuryAlpha20: tokens.novaFury.alpha20,
        novaFuryAlpha40: tokens.novaFury.alpha40,
        novaLeaf: tokens.novaLeaf.baseColor,
        novaLeafAlpha10: tokens.novaLeaf.alpha10,
        novaLeafAlpha20: tokens.novaLeaf.alpha20,
        novaLeafAlpha40: tokens.novaLeaf.alpha40,
        novaGold: tokens.novaGold.baseColor,
        novaGoldAlpha10: tokens.novaGold.alpha10,
        novaGoldAlpha20: tokens.novaGold.alpha20,
        novaGoldAlpha40: tokens.novaGold.alpha40,
      ),
    );
  }
}

class SemanticColors {
  final Color novaSky;
  final Color novaSkyAplha10;
  final Color novaSkyAplha20;
  final Color novaSkyAplha40;
  final Color novaFury;
  final Color novaFuryAlpha10;
  final Color novaFuryAlpha20;
  final Color novaFuryAlpha40;
  final Color novaLeaf;
  final Color novaLeafAlpha10;
  final Color novaLeafAlpha20;
  final Color novaLeafAlpha40;
  final Color novaGold;
  final Color novaGoldAlpha10;
  final Color novaGoldAlpha20;
  final Color novaGoldAlpha40;

  SemanticColors({
    required this.novaSky,
    required this.novaSkyAplha10,
    required this.novaSkyAplha20,
    required this.novaSkyAplha40,
    required this.novaFury,
    required this.novaFuryAlpha10,
    required this.novaFuryAlpha20,
    required this.novaFuryAlpha40,
    required this.novaLeaf,
    required this.novaLeafAlpha10,
    required this.novaLeafAlpha20,
    required this.novaLeafAlpha40,
    required this.novaGold,
    required this.novaGoldAlpha10,
    required this.novaGoldAlpha20,
    required this.novaGoldAlpha40,
  });
}
