import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NovaThemeManager.instance.initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Name",
      theme: NovaThemeManager.instance.theme,
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

// Example usage in a widget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E0E9),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100, width: 300),
              NovaButton(
                type: NovaButtonType.primary,
                label: 'Label',
                onPressed: () {},
                size: NovaButtonSize.small,
                textColor: NovaThemeManager
                    .instance.designTokens.colors.universalWhite,
              ),

              NovaButton(
                type: NovaButtonType.secondary,
                label: 'Label',
                onPressed: () {},
                size: NovaButtonSize.medium,
                isFullyRounded: true,
                textColor: NovaThemeManager.instance.colors.core.novaRage,
              ),
              NovaButton(
                type: NovaButtonType.tertiary,
                label: 'Label',
                onPressed: () {},
                size: NovaButtonSize.large,
                textColor: NovaThemeManager.instance.colors.core.novaRage,
              ),

              NovaButton(
                type: NovaButtonType.alternate,
                label: 'Label',
                onPressed: () {},
                size: NovaButtonSize.xlarge,
                isFullyRounded: true,
                textColor: NovaThemeManager
                    .instance.designTokens.colors.universalBlack,
              ),
              // NovaButton(
              //   type: NovaButtonType.tertiary,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.small,
              //   textColor: NovaThemeManager.instance.colors.core.novaRage,
              // ),
              // const SizedBox(height: 30),
              // NovaButton(
              //   type: NovaButtonType.tertiary,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.small,
              //   isFullyRounded: true,
              //   textColor: NovaThemeManager.instance.colors.core.novaRage,
              // ),
              // NovaButton(
              //   type: NovaButtonType.alternate,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.small,
              //   textColor:
              //       NovaThemeManager.instance.designTokens.colors.universalBlack,
              // ),
              // const SizedBox(height: 30),
              // NovaButton(
              //   type: NovaButtonType.alternate,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.small,
              //   isFullyRounded: true,
              //   textColor:
              //       NovaThemeManager.instance.designTokens.colors.universalBlack,
              // ),

              const SizedBox(height: 300),
              // NovaButton(
              //   type: NovaButtonType.secondary,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.medium,
              //   textColor: NovaThemeManager.instance.colors.core.novaRage,
              // ),
              // const SizedBox(height: 10),
              // NovaButton(
              //   type: NovaButtonType.tertiary,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.large,
              //   textColor: NovaThemeManager.instance.colors.core.novaRage,
              // ),
              // const SizedBox(height: 10),
              // NovaButton(
              //   type: NovaButtonType.alternate,
              //   label: 'Label',
              //   onPressed: () {},
              //   size: NovaButtonSize.xlarge,
              //   textColor:
              //       NovaThemeManager.instance.designTokens.colors.universalBlack,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
