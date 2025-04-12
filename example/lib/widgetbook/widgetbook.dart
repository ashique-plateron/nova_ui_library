// widgetbook.dart

import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

final directories = [
  WidgetbookFolder(
    name: 'Design System',
    children: [
      WidgetbookComponent(
        name: 'Spacing',
        useCases: [
          WidgetbookUseCase(
            name: 'Spacing Catalog',
            builder: (context) => const SpacingCatalog(),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Colors',
        useCases: [
          WidgetbookUseCase(
            name: 'Colors Catalog',
            builder: (context) => const NovaColorCatalog(),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Typography',
        useCases: [
          WidgetbookUseCase(
            name: 'Typography Catalog',
            builder: (context) => const TypographyCatalog(),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Border Radius',
        useCases: [
          WidgetbookUseCase(
            name: 'Border Radius Catalog',
            builder: (context) => const BorderRadiusCatalog(),
          ),
        ],
      ),
    ],
  ),
  // WidgetbookFolder(
  //   name: 'Components',
  //   children: [
  //     WidgetbookComponent(
  //       name: 'Buttons',
  //       useCases: [
  //         WidgetbookUseCase(
  //           name: 'Button Playgroud',
  //           builder: (context) => const SpacingCatalog(),
  //         ),
  //       ],
  //     ),
  //   ],
  // ),
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NovaThemeManager.instance.initialize();
  runApp(const MyApp());
}

// The @App annotation generates a file containing
// a single variable called directories.
@widgetbook.App()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: NovaThemeManager.instance.theme,
            ),
          ],
        ),
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: NovaThemeManager.instance.theme,
          home: child,
        );
      },
    );
  }
}
