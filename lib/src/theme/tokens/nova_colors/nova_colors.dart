import 'package:nova_ui_library/src/theme/tokens/color_tokens.dart';

import 'action/action_colors.dart';
import 'alias/alias_colors.dart';
import 'core/core_colors.dart';
import 'inputs/input_colors.dart';

class NovaColors {
  final ColorTokens tokens;

  final AliasColors alias;
  final InputColors input;
  final ActionColors action;
  final CoreColors core;

  NovaColors.fromToken({
    required this.tokens,
  })  : alias = AliasColors.fromToken(tokens),
        input = InputColors.fromToken(tokens),
        action = ActionColors.fromToken(tokens),
        core = CoreColors.fromToken(tokens);
}
