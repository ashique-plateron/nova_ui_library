import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/components/button/nova_button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

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
