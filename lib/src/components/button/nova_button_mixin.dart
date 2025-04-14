part of 'nova_button.dart';

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

mixin NovaButtonMixin on State<NovaButton> {
  // final themeManager = NovaThemeManager.instance;
  final colors = NovaThemeManager.instance.colors;

  final textStyles = NovaThemeManager.instance.textStyles;

  final spacing = NovaThemeManager.instance.designTokens.spacing;

  final borderRadius = NovaThemeManager.instance.designTokens.borderRadius;

  Size get _getMinSize {
    switch (widget.size) {
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

  (double, double) get _getButtonPadding {
    switch (widget.size) {
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
    if (widget.isFullyRounded) return borderRadius.fullyRounded;

    switch (widget.size) {
      case NovaButtonSize.small:
      case NovaButtonSize.medium:
        return borderRadius.m;
      case NovaButtonSize.large:
      case NovaButtonSize.xlarge:
        return borderRadius.l;
    }
  }

  Map<WidgetStatesConstraint, Color?> get getBackGroundColor {
    var map = <WidgetStatesConstraint, Color?>{};

    switch (widget.type) {
      case NovaButtonType.primary:
        map = {
          WidgetState.disabled:
              _getPrimaryColorsByState(WidgetState.disabled).$1,
          WidgetState.hovered: _getPrimaryColorsByState(WidgetState.hovered).$1,
          WidgetState.pressed: _getPrimaryColorsByState(WidgetState.pressed).$1,
          WidgetState.focused: _getPrimaryColorsByState(WidgetState.focused).$1,
          WidgetState.hovered & WidgetState.focused:
              _getPrimaryColorsByState(WidgetState.focused).$1,
        };
      case NovaButtonType.secondary:
        map = {
          WidgetState.hovered:
              _getSecondaryColorsByState(WidgetState.hovered).$1,
          WidgetState.pressed:
              _getSecondaryColorsByState(WidgetState.pressed).$1,
          WidgetState.disabled:
              _getSecondaryColorsByState(WidgetState.disabled).$1,
          WidgetState.focused:
              _getSecondaryColorsByState(WidgetState.focused).$1,
          WidgetState.hovered & WidgetState.focused:
              _getSecondaryColorsByState(WidgetState.focused).$1,
        };

      case NovaButtonType.tertiary:
        map = {
          WidgetState.hovered:
              _getTertiaryColorsByState(WidgetState.hovered).$1,
          WidgetState.pressed:
              _getTertiaryColorsByState(WidgetState.pressed).$1,
          WidgetState.disabled:
              _getTertiaryColorsByState(WidgetState.disabled).$1,
          WidgetState.focused:
              _getTertiaryColorsByState(WidgetState.focused).$1,
          WidgetState.hovered & WidgetState.focused:
              _getTertiaryColorsByState(WidgetState.focused).$1,
        };
      case NovaButtonType.alternate:
        map = {
          WidgetState.hovered:
              _getAlternateColorsByState(WidgetState.hovered).$1,
          WidgetState.pressed:
              _getAlternateColorsByState(WidgetState.pressed).$1,
          WidgetState.disabled:
              _getAlternateColorsByState(WidgetState.disabled).$1,
          WidgetState.focused:
              _getAlternateColorsByState(WidgetState.focused).$1,
          WidgetState.hovered & WidgetState.focused:
              _getAlternateColorsByState(WidgetState.focused).$1,
        };
    }
    return map;
  }

  Map<WidgetStatesConstraint, Color> get getBorderColor {
    var map = <WidgetStatesConstraint, Color>{};

    switch (widget.type) {
      case NovaButtonType.primary:
        map = {
          WidgetState.disabled:
              _getPrimaryColorsByState(WidgetState.disabled).$2,
          WidgetState.hovered: _getPrimaryColorsByState(WidgetState.hovered).$2,
          WidgetState.pressed: _getPrimaryColorsByState(WidgetState.pressed).$2,
          WidgetState.focused: _getPrimaryColorsByState(WidgetState.focused).$2,
          WidgetState.hovered & WidgetState.focused:
              _getPrimaryColorsByState(WidgetState.focused).$2,
        };
      case NovaButtonType.secondary:
        map = {
          WidgetState.hovered:
              _getSecondaryColorsByState(WidgetState.hovered).$2,
          WidgetState.pressed:
              _getSecondaryColorsByState(WidgetState.pressed).$2,
          WidgetState.disabled:
              _getSecondaryColorsByState(WidgetState.disabled).$2,
          WidgetState.focused:
              _getSecondaryColorsByState(WidgetState.focused).$2,
          WidgetState.hovered & WidgetState.focused:
              _getSecondaryColorsByState(WidgetState.focused).$2,
        };

      case NovaButtonType.tertiary:
        map = {
          WidgetState.hovered:
              _getTertiaryColorsByState(WidgetState.hovered).$2,
          WidgetState.pressed:
              _getTertiaryColorsByState(WidgetState.pressed).$2,
          WidgetState.disabled:
              _getTertiaryColorsByState(WidgetState.disabled).$2,
          WidgetState.focused:
              _getTertiaryColorsByState(WidgetState.focused).$2,
          WidgetState.hovered & WidgetState.focused:
              _getTertiaryColorsByState(WidgetState.focused).$2,
        };
      case NovaButtonType.alternate:
        map = {
          WidgetState.hovered:
              _getAlternateColorsByState(WidgetState.hovered).$2,
          WidgetState.pressed:
              _getAlternateColorsByState(WidgetState.pressed).$2,
          WidgetState.disabled:
              _getAlternateColorsByState(WidgetState.disabled).$2,
          WidgetState.focused:
              _getAlternateColorsByState(WidgetState.focused).$2,
          WidgetState.hovered & WidgetState.focused:
              _getAlternateColorsByState(WidgetState.focused).$2,
        };
    }
    return map;
  }

  (Color, Color, Color) _getPrimaryColorsByState(WidgetState state) {
    switch (state) {
      case WidgetState.hovered:
        return (
          colors.action.primary.background.hover,
          colors.action.primary.border.hover,
          colors.tokens.universalWhite
        );
      case WidgetState.pressed:
        return (
          colors.action.primary.background.pressed,
          colors.action.primary.border.pressed,
          colors.tokens.universalWhite
        );
      case WidgetState.disabled:
        return (
          colors.action.primary.background.disabled,
          colors.action.primary.border.disabled,
          colors.tokens.universalWhite
        );
      default:
        return (
          colors.action.primary.background.defaultColor,
          colors.action.primary.border.defaultColor,
          colors.tokens.universalWhite
        );
    }
  }

  (Color, Color, Color) _getSecondaryColorsByState(WidgetState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case WidgetState.hovered:
        return (
          colors.action.secondary.background.hover,
          colors.action.secondary.border.hover,
          colors.tokens.universalWhite
        );
      case WidgetState.pressed:
        return (
          colors.action.secondary.background.pressed,
          colors.action.secondary.border.pressed,
          colors.tokens.universalWhite
        );
      case WidgetState.disabled:
        return (
          colors.action.secondary.background.disabled,
          colors.action.secondary.border.disabled,
          colors.tokens.universalWhite
        );
      default:
        return (
          colors.action.secondary.background.defaultColor,
          colors.action.secondary.border.defaultColor,
          colors.tokens.universalWhite
        );
    }
  }

  (Color, Color, Color) _getTertiaryColorsByState(WidgetState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case WidgetState.hovered:
        return (
          colors.action.tertiary.background.hover,
          colors.action.tertiary.border.hover,
          colors.tokens.universalWhite
        );
      case WidgetState.pressed:
        return (
          colors.action.tertiary.background.pressed,
          colors.action.tertiary.border.pressed,
          colors.tokens.universalWhite
        );
      case WidgetState.disabled:
        return (
          colors.action.tertiary.background.disabled,
          colors.action.tertiary.border.disabled,
          colors.alias.type.brandPrimaryDisable,
        );
      default:
        return (
          colors.action.tertiary.background.defaultColor,
          colors.action.tertiary.border.defaultColor,
          colors.tokens.universalWhite
        );
    }
  }

  (Color, Color, Color) _getAlternateColorsByState(WidgetState state) {
    final colors = NovaThemeManager.instance.colors;
    switch (state) {
      case WidgetState.hovered:
        return (
          colors.action.alternate.background.hover,
          colors.action.alternate.border.hover,
          colors.tokens.universalWhite
        );
      case WidgetState.pressed:
        return (
          colors.action.alternate.background.pressed,
          colors.action.alternate.border.pressed,
          colors.tokens.universalWhite
        );
      case WidgetState.disabled:
        return (
          colors.action.alternate.background.disabled,
          colors.action.alternate.border.disabled,
          colors.tokens.universalWhite
        );
      default:
        return (
          colors.action.alternate.background.defaultColor,
          colors.action.alternate.border.defaultColor,
          colors.tokens.universalWhite
        );
    }
  }

  TextStyle get _getTextStyle {
    switch (widget.size) {
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

  //BG, Border, Text
  getButtonStyleByState(WidgetState state) {
    switch (state) {
      case WidgetState.hovered:
        return _getPrimaryColorsByState(WidgetState.hovered);
      case WidgetState.focused:
      case WidgetState.pressed:
      case WidgetState.disabled:
      default:
    }
  }
}
