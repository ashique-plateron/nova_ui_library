import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the theme provider
  final themeProvider = ThemeProvider();
  await themeProvider.initialize();

  runApp(MyApp(themeProvider: themeProvider));
}

class MyApp extends StatelessWidget {
  final ThemeProvider themeProvider;

  const MyApp({
    super.key,
    required this.themeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Name",
      theme: themeProvider.theme,
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
          context.novaTokens.borderRadius.superSoft,
        ),
        color: context.novaTokens.colors.novaBlush.alpha40,
      ),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Hello Nova',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
