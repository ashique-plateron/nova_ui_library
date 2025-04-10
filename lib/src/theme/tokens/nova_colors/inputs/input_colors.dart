import 'package:flutter/material.dart';

import '../../color_tokens.dart';

class InputColors {
  final Color borderDefault;
  final Color borderFocused;
  final Color borderFilled;

  InputColors({
    required this.borderDefault,
    required this.borderFocused,
    required this.borderFilled,
  });

  factory InputColors.fromToken(ColorTokens tokens) {
    return InputColors(
      borderDefault: tokens.morningFog.solid600,
      borderFocused: tokens.novaRage.solid600,
      borderFilled: tokens.morningFog.solid500,
    );
  }
}
