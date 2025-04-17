import 'package:nova_ui_library/nova_ui_library.dart';

import 'nova_base_button.dart';

class NovaPrimaryButton extends NovaBaseButton {
  const NovaPrimaryButton({
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
    super.textStyle,
  }) : super(
          type: NovaButtonType.primary,
          elevation: 0,
        );

  @override
  BackgroundActionColors get backgroundColors =>
      colors.action.primary.background;

  @override
  BorderColors get borderColors => colors.action.primary.border;
}
