import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Button Catalog',
  type: NovaButton,
)
Widget novaButtonCatalog(BuildContext context) {
  // Button type knob
  final buttonType = context.knobs.list(
    label: 'Type',
    options: NovaButtonVariant.values,
    initialOption: NovaButtonVariant.primary,
  );

  // Fully rounded knob
  final isFullyRounded = context.knobs.boolean(
    label: 'Fully-rounded?',
    initialValue: false,
  );

  // State knob (simulated through hover/pressed states)
  final buttonState = context.knobs.list(
    label: 'State',
    options: NovaButtonState.values,
    initialOption: NovaButtonState.default_,
  );

  // Size knob
  final buttonSize = context.knobs.list(
    label: 'Size',
    options: NovaButtonSize.values,
    initialOption: NovaButtonSize.medium,
  );

  // Icon append/prepend knobs
  final hasAppendIcon = context.knobs.boolean(
    label: 'Icon-append?',
    initialValue: false,
  );

  final hasPrependIcon = context.knobs.boolean(
    label: 'Icon-prepend?',
    initialValue: false,
  );

  // Icon selection knobs (only shown when respective icon options are enabled)
  final appendIcon = hasAppendIcon ? Icon(Icons.arrow_forward) : null;

  final prependIcon = hasPrependIcon ? Icon(Icons.arrow_back) : null;

  // Build the button with all the selected options
  return Center(
    child: NovaButton(
      variant: buttonType,
      size: buttonSize,
      onPressed: buttonState == NovaButtonState.disabled ? null : () {},
      isFullyRounded: isFullyRounded,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (hasPrependIcon && prependIcon != null) ...[
            prependIcon,
            SizedBox(width: 8),
          ],
          Text(
            'Button',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          if (hasAppendIcon && appendIcon != null) ...[
            SizedBox(width: 8),
            appendIcon,
          ],
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Default',
  type: NovaButton,
)
Widget novaButtonDefaultUseCase(BuildContext context) {
  return Center(
    child: NovaButton(
      onPressed: () {},
      child: const Text('Button'),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Variants',
  type: NovaButton,
)
Widget novaButtonVariantsUseCase(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NovaButton(
          variant: NovaButtonVariant.primary,
          onPressed: () {},
          child: const Text('Primary Button'),
        ),
        const SizedBox(height: 16),
        NovaButton(
          variant: NovaButtonVariant.secondary,
          onPressed: () {},
          child: const Text('Secondary Button'),
        ),
        const SizedBox(height: 16),
        NovaButton(
          variant: NovaButtonVariant.tertiary,
          onPressed: () {},
          child: const Text('Tertiary Button'),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Sizes',
  type: NovaButton,
)
Widget novaButtonSizesUseCase(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NovaButton(
          size: NovaButtonSize.small,
          onPressed: () {},
          child: const Text('Small Button'),
        ),
        const SizedBox(height: 16),
        NovaButton(
          size: NovaButtonSize.medium,
          onPressed: () {},
          child: const Text('Medium Button'),
        ),
        const SizedBox(height: 16),
        NovaButton(
          size: NovaButtonSize.large,
          onPressed: () {},
          child: const Text('Large Button'),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Full Width',
  type: NovaButton,
)
Widget novaButtonFullWidthUseCase(BuildContext context) {
  return Center(
    child: NovaButton(
      isFullWidth: true,
      onPressed: () {},
      child: const Text('Full Width Button'),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Loading',
  type: NovaButton,
)
Widget novaButtonLoadingUseCase(BuildContext context) {
  return Center(
    child: NovaButton(
      isLoading: true,
      onPressed: () {},
      child: const Text('Loading Button'),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: NovaButton,
)
Widget novaButtonDisabledUseCase(BuildContext context) {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NovaButton(
          variant: NovaButtonVariant.primary,
          onPressed: null,
          child: Text('Disabled Primary'),
        ),
        SizedBox(height: 16),
        NovaButton(
          variant: NovaButtonVariant.secondary,
          onPressed: null,
          child: Text('Disabled Secondary'),
        ),
        SizedBox(height: 16),
        NovaButton(
          variant: NovaButtonVariant.tertiary,
          onPressed: null,
          child: Text('Disabled Tertiary'),
        ),
      ],
    ),
  );
}
