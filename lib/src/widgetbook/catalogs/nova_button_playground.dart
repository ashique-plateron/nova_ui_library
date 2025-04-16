import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';
import 'package:widgetbook/widgetbook.dart';

class NovaButtonPlayground extends StatelessWidget {
  const NovaButtonPlayground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeManager = NovaThemeManager.instance;
    return Container(
      color: Colors.white,
      child: Center(
        child: Builder(
          builder: (context) {
            final selectedButtonTypeString = context.knobs.list(
              label: 'Button type',
              options: NovaButtonType.values
                  .map((e) => e.name.toUpperCase())
                  .toList(),
              initialOption: NovaButtonType.primary.name.toUpperCase(),
            );

            var selectedButtonType = switch (selectedButtonTypeString) {
              'PRIMARY' => NovaButtonType.primary,
              'SECONDARY' => NovaButtonType.secondary,
              'TERTIARY' => NovaButtonType.tertiary,
              'ALTERNATE' => NovaButtonType.alternate,
              _ => NovaButtonType.primary,
            };
            // Common button configuration properties
            final isFullyRounded = context.knobs.boolean(
              label: 'Fully-rounded?',
              initialValue: false,
            );

            final sizeString = context.knobs.list(
              label: 'Size',
              options: NovaButtonSize.values
                  .map((e) => e.name.toUpperCase())
                  .toList(),
              initialOption: NovaButtonSize.medium.name.toUpperCase(),
            );

            var size = switch (sizeString) {
              'SMALL' => NovaButtonSize.small,
              'MEDIUM' => NovaButtonSize.medium,
              'LARGE' => NovaButtonSize.large,
              'XLARGE' => NovaButtonSize.xlarge,
              _ => NovaButtonSize.medium,
            };
            final iconSize = context.knobs.list(
              label: 'Icon size',
              options: [16.0, 24.0, 32.0],
              initialOption: 16.0,
            );

            final showIcon = context.knobs.boolean(
              label: 'Show icon?',
              initialValue: false,
            );

            final icon = showIcon
                ? context.knobs.list(
                    label: 'Icon',
                    options: [
                      const Icon(Icons.keyboard_arrow_left),
                      const Icon(Icons.keyboard_arrow_right),
                      const Icon(Icons.add),
                      const Icon(Icons.remove),
                      const Icon(Icons.add_shopping_cart),
                      const Icon(Icons.shopping_cart),
                      const Icon(Icons.shopping_cart_checkout),
                    ],
                    initialOption: const Icon(Icons.keyboard_arrow_left),
                  )
                : null;

            final iconAlignmentString = context.knobs.list(
              label: 'Icon Position',
              options: IconAlignment.values
                  .map((e) => e.name.toUpperCase())
                  .toList(),
              initialOption: IconAlignment.start.name.toUpperCase(),
            );

            var iconAlignment = switch (iconAlignmentString) {
              'START' => IconAlignment.start,
              'END' => IconAlignment.end,
              _ => IconAlignment.start,
            };

            final iconColorText = selectedButtonType == NovaButtonType.primary
                ? context.knobs.list(
                    label: 'Icon color',
                    options: [
                      'White',
                      'Black',
                      'Rage',
                      'Bronze',
                    ],
                    initialOption: 'White',
                  )
                : null;
            var iconColor = switch (iconColorText) {
              'Rage' => context.novaTokens.colors.novaRage.baseColor,
              'Bronze' => context.novaTokens.colors.novaBronze,
              'White' => context.novaTokens.colors.universalWhite,
              'Black' => context.novaTokens.colors.universalBlack,
              _ => context.novaTokens.colors.universalWhite,
            };

            final textColorString = context.knobs.list(
              label: 'Text color',
              options: [
                'White',
                'Black',
                'Bronze',
                'Rage',
              ],
              initialOption: selectedButtonType == NovaButtonType.primary
                  ? 'White'
                  : context.novaTokens.colors.universalBlack,
            );

            var textColor = switch (textColorString) {
              'White' => context.novaTokens.colors.universalWhite,
              'Black' => context.novaTokens.colors.universalBlack,
              'Bronze' => context.novaTokens.colors.novaBronze,
              'Rage' => context.novaTokens.colors.novaRage.baseColor,
              _ => context.novaTokens.colors.universalWhite,
            };

            final textStyleString = context.knobs.list(
              label: 'Text style',
              options: [
                'Small',
                'Medium',
                'Large',
                'XLarge',
              ],
              initialOption: null,
            );

            var textStyle = switch (textStyleString) {
              'Small' => themeManager.textStyles.s,
              'Medium' => themeManager.textStyles.m,
              'Large' => themeManager.textStyles.l,
              'XLarge' => themeManager.textStyles.xl,
              _ => themeManager.textStyles.s,
            };

            // Render the appropriate button based on the selected type
            switch (selectedButtonType) {
              case NovaButtonType.primary:
                return NovaPrimaryButton(
                  label: 'Label',
                  onPressed: () {},
                  isFullyRounded: isFullyRounded,
                  size: size,
                  iconSize: iconSize,
                  icon: icon,
                  iconAlignment: iconAlignment,
                  iconColor: iconColor,
                  textColor: textColor,
                  textStyle: textStyle,
                );
              case NovaButtonType.secondary:
                return NovaSecondaryButton(
                  label: 'Label',
                  onPressed: () {},
                  isFullyRounded: isFullyRounded,
                  size: size,
                  iconSize: iconSize,
                  icon: icon,
                  iconAlignment: iconAlignment,
                  textColor: textColor,
                  iconColor: iconColor,
                  textStyle: textStyle,
                );
              case NovaButtonType.tertiary:
                return NovaTertiaryButton(
                  label: 'Label',
                  onPressed: () {},
                  isFullyRounded: isFullyRounded,
                  size: size,
                  iconSize: iconSize,
                  icon: icon,
                  iconAlignment: iconAlignment,
                  textColor: textColor,
                  iconColor: iconColor,
                  textStyle: textStyle,
                );
              case NovaButtonType.alternate:
                return NovaAlternateButton(
                  label: 'Label',
                  onPressed: () {},
                  isFullyRounded: isFullyRounded,
                  size: size,
                  iconSize: iconSize,
                  icon: icon,
                  iconAlignment: iconAlignment,
                  textColor: textColor,
                  iconColor: iconColor,
                  textStyle: textStyle,
                );
            }
          },
        ),
      ),
    );
  }
}
