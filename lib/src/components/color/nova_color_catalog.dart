import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/nova_theme_manager.dart';

class NovaColorCatalog extends StatelessWidget {
  const NovaColorCatalog({super.key});

  static Widget _buildColorSection(String title, Map<String, Color> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: colors.entries.map((entry) {
            return _ColorCard(
              color: entry.value,
              name: entry.key,
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = NovaThemeManager.instance.colors;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Nova Color Catalog'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColorSection(
                'Primary Colors',
                {
                  'Background - Default':
                      colors.action.primary.background.defaultColor,
                  'Background - Hover': colors.action.primary.background.hover,
                  'Background - Pressed':
                      colors.action.primary.background.pressed,
                  'Background - Disabled':
                      colors.action.primary.background.disabled,
                  'Border - Default': colors.action.primary.border.defaultColor,
                  'Border - Hover': colors.action.primary.border.hover,
                  'Border - Pressed': colors.action.primary.border.pressed,
                  'Border - Disabled': colors.action.primary.border.disabled,
                },
              ),
              const SizedBox(height: 32),
              _buildColorSection(
                'Secondary Colors',
                {
                  'Background - Default':
                      colors.action.secondary.background.defaultColor,
                  'Background - Hover':
                      colors.action.secondary.background.hover,
                  'Background - Pressed':
                      colors.action.secondary.background.pressed,
                  'Background - Disabled':
                      colors.action.secondary.background.disabled,
                  'Border - Default':
                      colors.action.secondary.border.defaultColor,
                  'Border - Hover': colors.action.secondary.border.hover,
                  'Border - Pressed': colors.action.secondary.border.pressed,
                  'Border - Disabled': colors.action.secondary.border.disabled,
                },
              ),
              const SizedBox(height: 32),
              _buildColorSection(
                'Tertiary Colors',
                {
                  'Background - Default':
                      colors.action.tertiary.background.defaultColor,
                  'Background - Hover': colors.action.tertiary.background.hover,
                  'Background - Pressed':
                      colors.action.tertiary.background.pressed,
                  'Background - Disabled':
                      colors.action.tertiary.background.disabled,
                  'Border - Default':
                      colors.action.tertiary.border.defaultColor,
                  'Border - Hover': colors.action.tertiary.border.hover,
                  'Border - Pressed': colors.action.tertiary.border.pressed,
                  'Border - Disabled': colors.action.tertiary.border.disabled,
                },
              ),
              const SizedBox(height: 32),
              _buildColorSection(
                'Alternate Colors',
                {
                  'Background - Default':
                      colors.action.alternate.background.defaultColor,
                  'Background - Hover':
                      colors.action.alternate.background.hover,
                  'Background - Pressed':
                      colors.action.alternate.background.pressed,
                  'Background - Disabled':
                      colors.action.alternate.background.disabled,
                  'Border - Default':
                      colors.action.alternate.border.defaultColor,
                  'Border - Hover': colors.action.alternate.border.hover,
                  'Border - Pressed': colors.action.alternate.border.pressed,
                  'Border - Disabled': colors.action.alternate.border.disabled,
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorCard extends StatelessWidget {
  final Color color;
  final String name;

  const _ColorCard({
    required this.color,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '#${color.value.toRadixString(16).toUpperCase().padLeft(8, '0')}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
            fontFamily: 'monospace',
          ),
        ),
      ],
    );
  }
}
