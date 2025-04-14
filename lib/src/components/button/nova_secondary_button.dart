import 'package:nova_ui_library/nova_ui_library.dart';

import 'nova_base_button.dart';

class NovaSecondaryButton extends NovaBaseButton {
  const NovaSecondaryButton({
    super.key,
    required super.label,
    super.onPressed,
    super.size = NovaButtonSize.medium,
    super.textColor,
    super.isFullyRounded,
    super.icon,
    super.iconColor,
    super.shadowColor,
    super.iconAlignment,
    super.iconSize,
    super.overlayColor,
  }) : super(
          type: NovaButtonType.secondary,
          elevation: 0,
        );

  @override
  BackgroundActionColors get backgroundColors =>
      colors.action.secondary.background;

  @override
  BorderColors get borderColors => colors.action.secondary.border;
}
