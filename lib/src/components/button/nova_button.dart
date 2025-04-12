import 'package:flutter/material.dart';

import '../../theme/app_typography.dart';
import '../../theme/nova_theme_manager.dart';
import '../../theme/tokens/nova_colors/nova_colors.dart';

/// The type of button to display
enum NovaButtonType {
  /// Primary button with solid background
  primary,

  /// Secondary button with transparent background and border
  secondary,

  /// Tertiary button with transparent background and no border
  tertiary,

  /// Alternate button with different styling
  alternate,
}

/// The size of the button
enum NovaButtonSize {
  /// Small button
  small,

  /// Medium button (default)
  medium,

  /// Large button
  large,

  /// Extra large button
  xlarge,
}

/// The state of the button
enum NovaButtonState {
  /// Default state
  default_,

  /// Hover state
  hover,

  /// Active/Pressed state
  active,

  /// Disabled state
  disabled,

  /// Focused state
  focused,
}

/// A customizable button component following Nova design system
class NovaButton extends StatelessWidget {
  /// The text to display on the button
  final String label;

  /// The type of button to display
  final NovaButtonType type;

  /// The size of the button
  final NovaButtonSize size;

  /// The state of the button
  final NovaButtonState state;

  /// Whether the button should be fully rounded
  final bool isFullyRounded;

  /// Optional icon to display before the text
  final Widget? prefixIcon;

  /// Optional icon to display after the text
  final Widget? suffixIcon;

  /// Callback when the button is pressed
  final VoidCallback? onPressed;

  /// Creates a new NovaButton
  const NovaButton({
    super.key,
    required this.label,
    this.type = NovaButtonType.primary,
    this.size = NovaButtonSize.medium,
    this.state = NovaButtonState.default_,
    this.isFullyRounded = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = NovaThemeManager.instance;
    final colors = theme.colors;
    final textStyles = theme.textStyles;

    // Get button dimensions based on size
    final (height, horizontalPadding) = _getButtonDimensions(size);

    // Get button style based on type and state
    final (backgroundColor, borderColor, textColor) =
        _getButtonStyle(type, state, colors);

    var button = Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: state == NovaButtonState.disabled ? null : onPressed,
        borderRadius: _getBorderRadius(size, isFullyRounded),
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
              width: 1,
            ),
            borderRadius: _getBorderRadius(size, isFullyRounded),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefixIcon != null) ...[
                prefixIcon!,
                const SizedBox(width: 8),
              ],
              Text(
                label,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              if (suffixIcon != null) ...[
                const SizedBox(width: 8),
                suffixIcon!,
              ],
            ],
          ),
        ),
      ),
    );
    if (state == NovaButtonState.focused) {
      return _getOutlinedButton(
        button,
        borderColor,
      );
    }
    return button;
  }

  Widget _getOutlinedButton(Widget child, Color borderColor) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: _getBorderRadius(size, isFullyRounded),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: child,
    );
  }

  (double, double) _getButtonDimensions(NovaButtonSize size) {
    switch (size) {
      case NovaButtonSize.small:
        return (36, 20);
      case NovaButtonSize.medium:
        return (44, 24);
      case NovaButtonSize.large:
        return (56, 36);
      case NovaButtonSize.xlarge:
        return (64, 40);
    }
  }

  BorderRadius _getBorderRadius(NovaButtonSize size, bool isFullyRounded) {
    if (isFullyRounded) {
      return BorderRadius.circular(999);
    }
    switch (size) {
      case NovaButtonSize.small:
      case NovaButtonSize.medium:
        return BorderRadius.circular(8);
      case NovaButtonSize.large:
      case NovaButtonSize.xlarge:
        return BorderRadius.circular(12);
    }
  }

  (Color, Color, Color) _getButtonStyle(
      NovaButtonType type, NovaButtonState state, NovaColors colors) {
    switch (type) {
      case NovaButtonType.primary:
        return _getPrimaryColors(state);
      case NovaButtonType.secondary:
        return _getSecondaryColors(state);
      case NovaButtonType.tertiary:
        return _getTertiaryColors(state);
      case NovaButtonType.alternate:
        return _getAlternateColors(state);
    }
  }

  (Color, Color, Color) _getPrimaryColors(NovaButtonState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case NovaButtonState.default_:
        return (
          colors.tokens.novaRage.baseColor,
          colors.tokens.novaRage.baseColor,
          colors.tokens.universalWhite
        );
      case NovaButtonState.hover:
        return (
          colors.tokens.novaRage.solid700,
          colors.tokens.novaRage.solid700,
          colors.tokens.universalWhite
        );
      case NovaButtonState.active:
        return (
          colors.tokens.novaRage.solid800,
          colors.tokens.novaRage.solid800,
          colors.tokens.universalWhite
        );
      case NovaButtonState.disabled:
        return (
          colors.tokens.novaRage.solid200,
          colors.tokens.novaRage.solid200,
          colors.tokens.universalWhite
        );
      case NovaButtonState.focused:
        return (
          colors.tokens.novaRage.baseColor,
          colors.tokens.novaRage.baseColor,
          colors.tokens.universalWhite
        );
    }
  }

  (Color, Color, Color) _getSecondaryColors(NovaButtonState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case NovaButtonState.default_:
        return (
          Colors.transparent,
          colors.tokens.novaRage.baseColor,
          colors.tokens.novaRage.baseColor
        );
      case NovaButtonState.hover:
        return (
          colors.tokens.universalWhite.withOpacity(0.02),
          colors.tokens.novaRage.solid700,
          colors.tokens.novaRage.solid700
        );
      case NovaButtonState.active:
        return (
          colors.tokens.universalWhite.withOpacity(0.05),
          colors.tokens.novaRage.solid800,
          colors.tokens.novaRage.solid800
        );
      case NovaButtonState.disabled:
        return (
          Colors.transparent,
          colors.tokens.novaRage.solid200,
          colors.tokens.novaRage.solid200
        );
      case NovaButtonState.focused:
        return (
          Colors.transparent,
          colors.tokens.novaRage.baseColor,
          colors.tokens.novaRage.baseColor
        );
    }
  }

  (Color, Color, Color) _getTertiaryColors(NovaButtonState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case NovaButtonState.default_:
        return (
          Colors.transparent,
          Colors.transparent,
          colors.tokens.novaRage.baseColor
        );
      case NovaButtonState.hover:
        return (
          colors.tokens.universalWhite.withOpacity(0.02),
          Colors.transparent,
          colors.tokens.novaRage.solid700
        );
      case NovaButtonState.active:
        return (
          colors.tokens.universalWhite.withOpacity(0.05),
          Colors.transparent,
          colors.tokens.novaRage.solid800
        );
      case NovaButtonState.disabled:
        return (
          Colors.transparent,
          Colors.transparent,
          colors.tokens.novaRage.solid200
        );
      case NovaButtonState.focused:
        return (
          Colors.transparent,
          Colors.transparent,
          colors.tokens.novaRage.baseColor
        );
    }
  }

  (Color, Color, Color) _getAlternateColors(NovaButtonState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case NovaButtonState.default_:
        return (
          colors.tokens.universalWhite,
          colors.tokens.universalWhite,
          colors.tokens.novaRage.baseColor
        );
      case NovaButtonState.hover:
        return (
          colors.tokens.morningFog.solid900,
          colors.tokens.morningFog.solid900,
          colors.tokens.novaRage.baseColor
        );
      case NovaButtonState.active:
        return (
          colors.tokens.morningFog.solid800,
          colors.tokens.morningFog.solid800,
          colors.tokens.novaRage.baseColor
        );
      case NovaButtonState.disabled:
        return (
          colors.tokens.morningFog.solid900,
          colors.tokens.morningFog.solid900,
          colors.tokens.novaRage.solid200
        );
      case NovaButtonState.focused:
        return (
          colors.tokens.universalWhite,
          colors.tokens.universalWhite,
          colors.tokens.novaRage.baseColor
        );
    }
  }

  TextStyle _getTextStyle(NovaButtonSize size, AppTypoGraphy textStyles) {
    switch (size) {
      case NovaButtonSize.small:
        return textStyles.s.medium;
      case NovaButtonSize.medium:
        return textStyles.m.medium;
      case NovaButtonSize.large:
        return textStyles.l.medium;
      case NovaButtonSize.xlarge:
        return textStyles.xl.medium;
    }
  }
}
