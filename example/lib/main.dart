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
      backgroundColor:
          NovaThemeManager.instance.designTokens.colors.universalWhite,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100, width: 300),
              NovaPrimaryButton(
                label: 'Primary',
                onPressed: () {},
                size: NovaButtonSize.small,
                textColor: NovaThemeManager
                    .instance.designTokens.colors.universalWhite,
              ),
              NovaSecondaryButton(
                label: 'Secondary',
                onPressed: () {},
                size: NovaButtonSize.medium,
                isFullyRounded: true,
                textColor:
                    NovaThemeManager.instance.colors.core.novaRage.baseColor,
                icon: const Icon(Icons.keyboard_arrow_left),
                iconAlignment: IconAlignment.end,
              ),
              NovaTertiaryButton(
                label: 'Tertiary',
                onPressed: () {},
                size: NovaButtonSize.large,
                textColor:
                    NovaThemeManager.instance.colors.core.novaRage.baseColor,
              ),
              NovaAlternateButton(
                label: 'Alternate',
                onPressed: () {},
                size: NovaButtonSize.xlarge,
                isFullyRounded: true,
                textColor: NovaThemeManager
                    .instance.designTokens.colors.universalBlack,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Svg Icons",
                      style: NovaThemeManager.instance.textStyles.xl4.extraBold,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "16px Icons",
                      style: NovaThemeManager.instance.textStyles.xl2.semiBold,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: Assets.icons.svg.values
                          .where((e) => e.keyName.contains('_16'))
                          .map((e) {
                        return Column(
                          spacing: 10,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            e.svg(),
                            const SizedBox(height: 4),
                            Text(e.keyName.split('/').last.split('.').first),
                          ],
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 40),
                    Text(
                      "24px Icons",
                      style: NovaThemeManager.instance.textStyles.xl2.semiBold,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: Assets.icons.svg.values
                          .where((e) => e.keyName.contains('_24'))
                          .map((e) {
                        return Column(
                          children: [
                            e.svg(),
                            const SizedBox(height: 4),
                            Text(e.keyName.split('/').last.split('.').first),
                          ],
                        );
                      }).toList(),
                    ),

                    ///"Specialized Icons",
                    const SizedBox(height: 40),
                    Text(
                      "Specialized Icons",
                      style: NovaThemeManager.instance.textStyles.xl2.extraBold,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: Assets.icons.specializedIcons.values.map((e) {
                        return Column(
                          children: [
                            e.svg(),
                            const SizedBox(height: 4),
                            Text(
                              e.keyName.split('/').last.split('.').first,
                              style: NovaThemeManager.instance.textStyles.xs
                                  .copyWith(
                                color: NovaThemeManager.instance.designTokens
                                    .colors.universalBlack,
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
