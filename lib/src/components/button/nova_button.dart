import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/nova_theme_extension.dart';
import 'package:nova_ui_library/src/theme/nova_theme_manager.dart';
import 'package:nova_ui_library/src/theme/tokens/design_tokens.dart';
import 'package:nova_ui_library/src/theme/tokens/nova_colors/nova_colors.dart';

enum NovaButtonSize {
  small,
  medium,
  large,
  xlarge,
}

enum NovaButtonVariant {
  primary,
  secondary,
  tertiary,
  alternate,
}

enum NovaButtonState {
  default_,
  hover,
  pressed,
  focused,
  disabled,
}

class NovaButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final NovaButtonSize size;
  final NovaButtonVariant variant;
  final bool isFullWidth;
  final bool isLoading;
  final bool isFullyRounded;
  final EdgeInsetsGeometry? padding;

  const NovaButton({
    super.key,
    required this.child,
    this.onPressed,
    this.size = NovaButtonSize.medium,
    this.variant = NovaButtonVariant.primary,
    this.isFullWidth = false,
    this.isLoading = false,
    this.isFullyRounded = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = context.novaTokens;
    final colors = NovaThemeManager.instance.colors;

    final buttonStyle = _getButtonStyle(
      tokens,
      colors,
      variant,
      isFullyRounded,
      size,
    );
    final buttonPadding = padding ?? _getButtonPadding(tokens, size);
    final buttonHeight = _getButtonHeight(size);

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: buttonStyle.copyWith(
          padding: WidgetStateProperty.all(buttonPadding),
        ),
        child: _ButtonContent(
          isLoading: isLoading,
          child: child,
        ),
      ),
    );
  }

  ButtonStyle _getButtonStyle(
    NovaDesignTokens tokens,
    NovaColors colors,
    NovaButtonVariant variant,
    bool isFullyRounded,
    NovaButtonSize size,
  ) {
    final borderRadius = isFullyRounded
        ? tokens.borderRadius.fullyRounded
        : size == NovaButtonSize.large
            ? tokens.borderRadius.l
            : tokens.borderRadius.m;

    switch (variant) {
      case NovaButtonVariant.primary:
        return ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colors.action.primary.background.defaultColor,
          foregroundColor: tokens.colors.universalWhite,
          disabledBackgroundColor: colors.action.primary.background.disabled,
          disabledForegroundColor: tokens.colors.universalWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: colors.action.primary.border.defaultColor,
              width: 1,
            ),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return colors.action.primary.background.pressed;
            }
            if (states.contains(WidgetState.hovered)) {
              return colors.action.primary.background.hover;
            }
            if (states.contains(WidgetState.focused)) {
              return null;
            }
            return null;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(
                color: colors.action.primary.border.defaultColor,
                width: 2,
              );
            }
            return BorderSide(
              color: colors.action.primary.border.defaultColor,
              width: 1,
            );
          }),
        );

      case NovaButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colors.action.secondary.background.defaultColor,
          foregroundColor: colors.action.primary.background.defaultColor,
          disabledBackgroundColor: colors.action.secondary.background.disabled,
          disabledForegroundColor: colors.action.primary.background.disabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: colors.action.secondary.border.defaultColor,
              width: 1,
            ),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith((states) {
            return _getOverLayColor(states, variant, colors);
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(
                color: colors.action.secondary.border.defaultColor,
                width: 2,
              );
            }
            return BorderSide(
              color: colors.action.secondary.border.defaultColor,
              width: 1,
            );
          }),
        );

      case NovaButtonVariant.tertiary:
        return ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colors.action.tertiary.background.defaultColor,
          foregroundColor: colors.action.primary.background.defaultColor,
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: colors.action.primary.background.disabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return colors.action.secondary.background.pressed;
            }
            if (states.contains(WidgetState.hovered)) {
              return colors.action.secondary.background.hover;
            }
            return null;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(
                color: colors.action.primary.background.defaultColor,
                width: 2,
              );
            }
            return const BorderSide(
              color: Colors.transparent,
              width: 1,
            );
          }),
        );
      case NovaButtonVariant.alternate:
        return ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: colors.action.primary.background.defaultColor,
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: colors.action.primary.background.disabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return colors.action.secondary.background.pressed;
            }
            if (states.contains(WidgetState.hovered)) {
              return colors.action.secondary.background.hover;
            }
            return null;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(
                color: colors.action.primary.background.defaultColor,
                width: 2,
              );
            }
            return const BorderSide(
              color: Colors.transparent,
              width: 1,
            );
          }),
        );
    }
  }

  EdgeInsetsGeometry _getButtonPadding(
    NovaDesignTokens tokens,
    NovaButtonSize size,
  ) {
    switch (size) {
      case NovaButtonSize.small:
        return EdgeInsets.symmetric(
          horizontal: tokens.spacing.x5,
          vertical: tokens.spacing.x0,
        );
      case NovaButtonSize.medium:
        return EdgeInsets.symmetric(
          horizontal: tokens.spacing.x6,
          vertical: tokens.spacing.x10,
        );
      case NovaButtonSize.large:
        return EdgeInsets.symmetric(
          horizontal: tokens.spacing.x9,
          vertical: tokens.spacing.x10,
        );
      case NovaButtonSize.xlarge:
        return EdgeInsets.symmetric(
          horizontal: tokens.spacing.x10,
          vertical: tokens.spacing.x10,
        );
    }
  }

  double _getButtonHeight(NovaButtonSize size) {
    switch (size) {
      case NovaButtonSize.small:
        return 36;
      case NovaButtonSize.medium:
        return 44;
      case NovaButtonSize.large:
        return 56;
      case NovaButtonSize.xlarge:
        return 64;
    }
  }

  Color _getOverLayColor(
    Set<WidgetState> states,
    NovaButtonVariant variant,
    NovaColors colors,
  ) {
    if (states.contains(WidgetState.pressed)) {
      return colors.action.secondary.background.pressed;
    }
    if (states.contains(WidgetState.hovered)) {
      return colors.action.secondary.background.hover;
    }
    return colors.action.secondary.background.defaultColor;
  }
}

class _ButtonContent extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const _ButtonContent({
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (!isLoading) return child;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        const SizedBox(width: 8),
        child,
      ],
    );
  }
}
