import 'package:flutter/material.dart';

import '../../theme/nova_theme_manager.dart';

part './nova_button_mixin.dart';

/// Icon position options for NovaButton
enum NovaIconPosition {
  /// Icon placed at the start of the button
  start,

  /// Icon placed at the end of the button
  end,
}

/// A customizable button component following Nova design system
class NovaButton extends StatefulWidget {
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
  final NovaIconPosition iconPosition;

  /// The elevation of the button
  final double elevation;

  /// The overlay color of the button
  final Color? overlayColor;

  /// The size of the icon
  final double? iconSize;

  /// The color of the icon
  final Color? iconColor;

  /// Creates a new NovaButton
  const NovaButton({
    super.key,
    required this.label,
    this.type = NovaButtonType.primary,
    this.size = NovaButtonSize.medium,
    this.isFullyRounded = false,
    this.icon,
    this.onPressed,
    this.textColor,
    this.shadowColor = Colors.transparent,
    this.iconPosition = NovaIconPosition.start,
    this.elevation = 0,
    this.overlayColor,
    this.iconSize,
    this.iconColor,
  });

  @override
  State<NovaButton> createState() => _NovaButtonState();
}

class _NovaButtonState extends State<NovaButton> with NovaButtonMixin {
  bool get isDisabled => widget.onPressed == null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        widget.label,
        style: _getTextStyle.copyWith(
          color: widget.textColor,
        ),
      ),
      onPressed: widget.onPressed,
      icon: widget.icon,
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(_getMinSize),
        shadowColor: WidgetStatePropertyAll(widget.shadowColor),
        side: WidgetStateProperty.resolveWith(
          (states) {
            Color color;
            if (states.isEmpty) {
              color = getBorderColor[WidgetState.focused]!;
            } else {
              color = getBorderColor[states.first]!;
            }
            return BorderSide(color: color);
          },
        ),
        backgroundBuilder: (context, states, child) {
          if (!states.contains(WidgetState.focused)) return child!;
          return Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_getBorderRadius),
              border: Border.all(
                color: getBorderColor[WidgetState.focused]!,
                width: 1,
              ),
            ),
            child: child,
          );
        },
        elevation: WidgetStatePropertyAll(widget.elevation),
        overlayColor: WidgetStatePropertyAll(widget.overlayColor),
        backgroundColor: WidgetStateProperty.resolveWith(
          (Set<WidgetState> states) {
            if (states.isEmpty) return getBackGroundColor[WidgetState.focused];
            return getBackGroundColor[states.first] ??
                getBackGroundColor[WidgetState.focused];
          },
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: _getButtonPadding.$1,
            horizontal: _getButtonPadding.$2,
          ),
        ),
        iconSize: WidgetStateProperty.all(widget.iconSize),
        iconColor: WidgetStateProperty.all(widget.iconColor),
        enableFeedback: widget.onPressed != null,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getBorderRadius),
          ),
        ),
      ),
    );
  }
}
