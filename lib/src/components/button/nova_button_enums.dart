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
