import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/components/button/nova_button.dart';
import 'package:widgetbook/widgetbook.dart';

enum ButtonState {
  default_,
  hover,
  pressed,
  focused,
}

class NovaButtonStories extends WidgetbookComponent {
  NovaButtonStories()
      : super(
          name: 'Nova Button',
          useCases: [
            WidgetbookUseCase(
              name: 'Primary Button',
              builder: (context) {
                final buttonState = context.knobs.list(
                  label: 'Button State',
                  options: ButtonState.values,
                  labelBuilder: (state) =>
                      state.toString().split('.').last.replaceAll('_', ''),
                );

                return Focus(
                  autofocus: buttonState == ButtonState.focused,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: NovaButton(
                      onPressed: () {},
                      variant: NovaButtonVariant.primary,
                      size: context.knobs.list(
                        label: 'Size',
                        options: [
                          NovaButtonSize.small,
                          NovaButtonSize.medium,
                          NovaButtonSize.large,
                          NovaButtonSize.xlarge,
                        ],
                        labelBuilder: (size) => size.toString().split('.').last,
                      ),
                      isFullWidth: context.knobs.boolean(
                        label: 'Full Width',
                        initialValue: false,
                      ),
                      isFullyRounded: context.knobs.boolean(
                        label: 'Fully Rounded',
                        initialValue: false,
                      ),
                      isLoading: context.knobs.boolean(
                        label: 'Loading',
                        initialValue: false,
                      ),
                      child: const Text('Primary Button'),
                    ),
                  ),
                );
              },
            ),
            WidgetbookUseCase(
              name: 'Secondary Button',
              builder: (context) {
                final buttonState = context.knobs.list(
                  label: 'Button State',
                  options: ButtonState.values,
                  labelBuilder: (state) =>
                      state.toString().split('.').last.replaceAll('_', ''),
                );

                return Focus(
                  autofocus: buttonState == ButtonState.focused,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: NovaButton(
                      onPressed: () {},
                      variant: NovaButtonVariant.secondary,
                      size: context.knobs.list(
                        label: 'Size',
                        options: [
                          NovaButtonSize.small,
                          NovaButtonSize.medium,
                          NovaButtonSize.large,
                          NovaButtonSize.xlarge,
                        ],
                        labelBuilder: (size) => size.toString().split('.').last,
                      ),
                      isFullWidth: context.knobs.boolean(
                        label: 'Full Width',
                        initialValue: false,
                      ),
                      isFullyRounded: context.knobs.boolean(
                        label: 'Fully Rounded',
                        initialValue: false,
                      ),
                      isLoading: context.knobs.boolean(
                        label: 'Loading',
                        initialValue: false,
                      ),
                      child: const Text('Secondary Button'),
                    ),
                  ),
                );
              },
            ),
            WidgetbookUseCase(
              name: 'Tertiary Button',
              builder: (context) {
                final buttonState = context.knobs.list(
                  label: 'Button State',
                  options: ButtonState.values,
                  labelBuilder: (state) =>
                      state.toString().split('.').last.replaceAll('_', ''),
                );

                return Focus(
                  autofocus: buttonState == ButtonState.focused,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: NovaButton(
                      onPressed: () {},
                      variant: NovaButtonVariant.tertiary,
                      size: context.knobs.list(
                        label: 'Size',
                        options: [
                          NovaButtonSize.small,
                          NovaButtonSize.medium,
                          NovaButtonSize.large,
                          NovaButtonSize.xlarge,
                        ],
                        labelBuilder: (size) => size.toString().split('.').last,
                      ),
                      isFullWidth: context.knobs.boolean(
                        label: 'Full Width',
                        initialValue: false,
                      ),
                      isFullyRounded: context.knobs.boolean(
                        label: 'Fully Rounded',
                        initialValue: false,
                      ),
                      isLoading: context.knobs.boolean(
                        label: 'Loading',
                        initialValue: false,
                      ),
                      child: const Text('Tertiary Button'),
                    ),
                  ),
                );
              },
            ),
            WidgetbookUseCase(
              name: 'Alternate Button',
              builder: (context) {
                final buttonState = context.knobs.list(
                  label: 'Button State',
                  options: ButtonState.values,
                  labelBuilder: (state) =>
                      state.toString().split('.').last.replaceAll('_', ''),
                );

                return Focus(
                  autofocus: buttonState == ButtonState.focused,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: NovaButton(
                      onPressed: () {},
                      variant: NovaButtonVariant.alternate,
                      size: context.knobs.list(
                        label: 'Size',
                        options: [
                          NovaButtonSize.small,
                          NovaButtonSize.medium,
                          NovaButtonSize.large,
                          NovaButtonSize.xlarge,
                        ],
                        labelBuilder: (size) => size.toString().split('.').last,
                      ),
                      isFullWidth: context.knobs.boolean(
                        label: 'Full Width',
                        initialValue: false,
                      ),
                      isFullyRounded: context.knobs.boolean(
                        label: 'Fully Rounded',
                        initialValue: false,
                      ),
                      isLoading: context.knobs.boolean(
                        label: 'Loading',
                        initialValue: false,
                      ),
                      child: const Text('Alternate Button'),
                    ),
                  ),
                );
              },
            ),
            WidgetbookUseCase(
              name: 'Disabled Button',
              builder: (context) {
                return NovaButton(
                  onPressed: null,
                  variant: context.knobs.list(
                    label: 'Variant',
                    options: [
                      NovaButtonVariant.primary,
                      NovaButtonVariant.secondary,
                      NovaButtonVariant.tertiary,
                      NovaButtonVariant.alternate,
                    ],
                    initialOption: NovaButtonVariant.primary,
                    labelBuilder: (variant) =>
                        variant.toString().split('.').last,
                  ),
                  size: NovaButtonSize.medium,
                  child: const Text('Disabled Button'),
                );
              },
            ),
          ],
        );
}
