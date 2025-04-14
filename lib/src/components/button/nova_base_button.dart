import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

/// A customizable button component following Nova design system
class NovaBaseButton extends StatelessWidget {
  /// The text to display on the button
  final String label;

  /// The type of button to display
  final NovaButtonType type;

  /// The size of the button
  final NovaButtonSize size;

  /// Whether the button should be fully rounded
  final bool isFullyRounded;

  /// Optional icon to display after the text
  final Widget? icon;

  /// Callback when the button is pressed
  final VoidCallback? onPressed;

  /// The color of the button
  final Color? textColor;

  /// The color of the button when focused
  final Color shadowColor;

  /// The position of the icon relative to the label
  final IconAlignment iconAlignment;

  /// The elevation of the button
  final double elevation;

  /// The overlay color of the button
  final Color? overlayColor;

  /// The size of the icon
  final double? iconSize;

  /// The color of the icon
  final Color? iconColor;

  /// Creates a new NovaButton
  const NovaBaseButton({
    super.key,
    required this.label,
    this.type = NovaButtonType.primary,
    this.size = NovaButtonSize.medium,
    this.isFullyRounded = false,
    this.icon,
    this.onPressed,
    this.textColor,
    this.shadowColor = Colors.transparent,
    this.iconAlignment = IconAlignment.start,
    this.elevation = 0,
    this.overlayColor,
    this.iconSize,
    this.iconColor,
  });

  bool get isDisabled => onPressed == null;
  NovaColors get colors => NovaThemeManager.instance.colors;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        label,
        style: _getTextStyle.copyWith(
          color: textColor,
        ),
      ),
      onPressed: onPressed,
      icon: icon,
      iconAlignment: iconAlignment,
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(_getMinSize),
        shadowColor: WidgetStatePropertyAll(shadowColor),
        side: getBorder,
        elevation: WidgetStatePropertyAll(elevation),
        overlayColor: WidgetStatePropertyAll(overlayColor),
        backgroundColor: getBackgroundColor,
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: _getButtonPadding.$1,
            horizontal: _getButtonPadding.$2,
          ),
        ),
        iconSize: WidgetStateProperty.all(iconSize),
        iconColor: WidgetStateProperty.all(iconColor),
        enableFeedback: onPressed != null,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius),
          ),
        ),
      ),
    );
  }

  Size get _getMinSize {
    switch (size) {
      case NovaButtonSize.small:
        return const Size(96, 36);
      case NovaButtonSize.medium:
        return const Size(112, 44);
      case NovaButtonSize.large:
        return const Size(112, 56);
      case NovaButtonSize.xlarge:
        return const Size(112, 64);
    }
  }

  TextStyle get _getTextStyle {
    final textStyles = NovaThemeManager.instance.textStyles;
    switch (size) {
      case NovaButtonSize.small:
        return textStyles.xs.regular;
      case NovaButtonSize.medium:
        return textStyles.s.regular;
      case NovaButtonSize.large:
        return textStyles.m.regular;
      case NovaButtonSize.xlarge:
        return textStyles.m.regular;
    }
  }

  (double, double) get _getButtonPadding {
    final spacing = NovaThemeManager.instance.designTokens.spacing;
    switch (size) {
      case NovaButtonSize.small:
        return (spacing.x0, spacing.x5);
      case NovaButtonSize.medium:
        return (spacing.x2Half, spacing.x6);
      case NovaButtonSize.large:
        return (spacing.x2Half, spacing.x9);
      case NovaButtonSize.xlarge:
        return (spacing.x2Half, spacing.x10);
    }
  }

  double get _getBorderRadius {
    final borderRadius = NovaThemeManager.instance.designTokens.borderRadius;
    if (isFullyRounded) return borderRadius.fullyRounded;
    switch (size) {
      case NovaButtonSize.small:
      case NovaButtonSize.medium:
        return borderRadius.m;
      case NovaButtonSize.large:
      case NovaButtonSize.xlarge:
        return borderRadius.l;
    }
  }

  WidgetStateProperty<BorderSide?> get getBorder {
    return WidgetStateProperty.resolveWith(
      (states) {
        Color color;
        if (states.isEmpty) {
          color = borderColorMap[WidgetState.focused]!;
        } else {
          color = borderColorMap[states.first]!;
        }
        return BorderSide(color: color);
      },
    );
  }

  WidgetStateProperty<Color> get getBackgroundColor {
    return WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if (states.isEmpty) {
        return backgroundColorMap[WidgetState.focused] ??
            colors.action.primary.background.defaultColor;
      }
      return backgroundColorMap[states.first] ??
          backgroundColorMap[WidgetState.focused] ??
          colors.action.primary.background.defaultColor;
    });
  }

  Map<WidgetStatesConstraint, Color> get borderColorMap {
    return {
      WidgetState.disabled: borderColors.disabled,
      WidgetState.hovered: borderColors.hover,
      WidgetState.pressed: borderColors.pressed,
      WidgetState.focused: borderColors.defaultColor,
      WidgetState.hovered & WidgetState.focused: borderColors.defaultColor,
    };
  }

  Map<WidgetStatesConstraint, Color> get backgroundColorMap {
    return {
      WidgetState.disabled: backgroundColors.disabled,
      WidgetState.hovered: backgroundColors.hover,
      WidgetState.pressed: backgroundColors.pressed,
      WidgetState.focused: backgroundColors.defaultColor,
      WidgetState.hovered & WidgetState.focused: backgroundColors.defaultColor,
    };
  }

  BorderColors get borderColors {
    return colors.action.primary.border;
  }

  BackgroundActionColors get backgroundColors {
    return colors.action.primary.background;
  }
}
