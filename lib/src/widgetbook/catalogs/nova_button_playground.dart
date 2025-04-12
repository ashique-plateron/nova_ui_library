import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/components/button/nova_button.dart';
import 'package:widgetbook/widgetbook.dart';

class NovaButtonPlayground extends StatelessWidget {
  const NovaButtonPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: NovaButton(
          label: 'Label',
          onPressed: () {},
          type: context.knobs.list(
            label: 'Type',
            options: NovaButtonType.values,
            initialOption: NovaButtonType.primary,
          ),
          isFullyRounded: context.knobs.boolean(
            label: 'Fully-rounded?',
            initialValue: true,
          ),
          state: context.knobs.list(
            label: 'State',
            options: NovaButtonState.values,
            initialOption: NovaButtonState.focused,
          ),
          size: context.knobs.list(
            label: 'Size',
            options: NovaButtonSize.values,
            initialOption: NovaButtonSize.medium,
          ),
          suffixIcon: context.knobs.boolean(
            label: 'Icon-append?',
            initialValue: true,
          )
              ? const Icon(
                  Icons.keyboard_arrow_left,
                  size: 16,
                )
              : null,
          prefixIcon: context.knobs.boolean(
            label: 'Icon-prepend?',
            initialValue: true,
          )
              ? const Icon(
                  Icons.keyboard_arrow_left,
                  size: 16,
                )
              : null,
        ),
      ),
    );
  }
}
