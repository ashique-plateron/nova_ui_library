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
    return Container(
      padding: EdgeInsets.all(
        context.novaTokens.spacing.x20,
      ),
      margin: EdgeInsets.all(
        context.novaTokens.spacing.x16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          context.novaTokens.borderRadius.xl,
        ),
        color: context.novaTokens.colors.novaRage.baseColor,
      ),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'Hello Nova',
                style: NovaThemeManager.instance.textStyles.s.regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
