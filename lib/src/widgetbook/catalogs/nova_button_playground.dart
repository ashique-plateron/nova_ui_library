import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';
import 'package:widgetbook/widgetbook.dart';

class NovaButtonPlayground extends StatelessWidget {
  final NovaButtonType type;

  const NovaButtonPlayground({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: switch (type) {
          NovaButtonType.primary => const NovaButtonPrimary(),
          NovaButtonType.secondary => const NovaButtonSecondary(),
          NovaButtonType.tertiary => const NovaButtonTertiary(),
          NovaButtonType.alternate => const NovaButtonAlternate(),
        },
      ),
    );
  }
}

class NovaButtonPrimary extends StatelessWidget {
  const NovaButtonPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    return NovaPrimaryButton(
      label: 'Label',
      onPressed: () {},
      iconColor: context.knobs.list(
        label: 'Icon color',
        options: [
          Colors.white,
          Colors.black,
          Colors.red,
          Colors.blue,
          Colors.green,
        ],
        initialOption: Colors.white,
      ),
      isFullyRounded: context.knobs.boolean(
        label: 'Fully-rounded?',
        initialValue: true,
      ),
      size: context.knobs.list(
        label: 'Size',
        options: NovaButtonSize.values,
        initialOption: NovaButtonSize.medium,
      ),
      iconSize: context.knobs.list(
        label: 'Icon size',
        options: [16, 24, 32],
        initialOption: 16,
      ),
      icon: context.knobs.boolean(
        label: 'Show icon?',
        initialValue: true,
      )
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
                const Icon(Icons.shopping_cart_checkout),
                const Icon(Icons.shopping_cart_checkout),
              ],
              initialOption: const Icon(Icons.keyboard_arrow_left),
            )
          : null,
      iconAlignment: context.knobs.list(
        label: 'Icon Position',
        options: IconAlignment.values,
        initialOption: IconAlignment.start,
      ),
      textColor: context.knobs.list(
        label: 'Text color',
        options: [
          context.novaTokens.colors.universalWhite,
          context.novaTokens.colors.universalBlack,
          context.novaTokens.colors.novaBronze,
          context.novaTokens.colors.novaRage.baseColor,
        ],
      ),
    );
  }
}

class NovaButtonSecondary extends StatelessWidget {
  const NovaButtonSecondary({super.key});

  @override
  Widget build(BuildContext context) {
    return NovaSecondaryButton(
      label: 'Label',
      onPressed: () {},
      isFullyRounded: context.knobs.boolean(
        label: 'Fully-rounded?',
        initialValue: true,
      ),
      size: context.knobs.list(
        label: 'Size',
        options: NovaButtonSize.values,
        initialOption: NovaButtonSize.medium,
      ),
      iconSize: context.knobs.list(
        label: 'Icon size',
        options: [16, 24, 32],
        initialOption: 16,
      ),
      icon: context.knobs.boolean(
        label: 'Show icon?',
        initialValue: true,
      )
          ? const Icon(
              Icons.keyboard_arrow_left,
              size: 16,
            )
          : null,
      iconAlignment: context.knobs.list(
        label: 'Icon Position',
        options: IconAlignment.values,
        initialOption: IconAlignment.start,
      ),
    );
  }
}

class NovaButtonTertiary extends StatelessWidget {
  const NovaButtonTertiary({super.key});

  @override
  Widget build(BuildContext context) {
    return NovaTertiaryButton(
      label: 'Label',
      onPressed: () {},
      isFullyRounded: context.knobs.boolean(
        label: 'Fully-rounded?',
        initialValue: true,
      ),
      size: context.knobs.list(
        label: 'Size',
        options: NovaButtonSize.values,
        initialOption: NovaButtonSize.medium,
      ),
      iconSize: context.knobs.list(
        label: 'Icon size',
        options: [16, 24, 32],
        initialOption: 16,
      ),
      icon: context.knobs.boolean(
        label: 'Show icon?',
        initialValue: true,
      )
          ? const Icon(
              Icons.keyboard_arrow_left,
              size: 16,
            )
          : null,
      iconAlignment: context.knobs.list(
        label: 'Icon Position',
        options: IconAlignment.values,
        initialOption: IconAlignment.start,
      ),
    );
  }
}

class NovaButtonAlternate extends StatelessWidget {
  const NovaButtonAlternate({super.key});

  @override
  Widget build(BuildContext context) {
    return NovaAlternateButton(
      label: 'Label',
      onPressed: () {},
      isFullyRounded: context.knobs.boolean(
        label: 'Fully-rounded?',
        initialValue: true,
      ),
      size: context.knobs.list(
        label: 'Size',
        options: NovaButtonSize.values,
        initialOption: NovaButtonSize.medium,
      ),
      iconSize: context.knobs.list(
        label: 'Icon size',
        options: [16, 24, 32],
        initialOption: 16,
      ),
      icon: context.knobs.boolean(
        label: 'Show icon?',
        initialValue: true,
      )
          ? const Icon(
              Icons.keyboard_arrow_left,
              size: 16,
            )
          : null,
      iconAlignment: context.knobs.list(
        label: 'Icon Position',
        options: IconAlignment.values,
        initialOption: IconAlignment.start,
      ),
    );
  }
}
