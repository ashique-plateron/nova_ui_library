import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

class SpacingCatalog extends StatelessWidget {
  const SpacingCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova UI Spacing Catalog'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Spacing Variables',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildSpacingPreview(
              'zero',
              NovaThemeManager.instance.designTokens.spacing.x0,
            ),
            _buildSpacingPreview(
              'halfX',
              NovaThemeManager.instance.designTokens.spacing.halfX,
            ),
            _buildSpacingPreview(
              'baseline',
              NovaThemeManager.instance.designTokens.spacing.baseline,
            ),
            _buildSpacingPreview(
              'x1Half',
              NovaThemeManager.instance.designTokens.spacing.x1Half,
            ),
            _buildSpacingPreview(
              'x2',
              NovaThemeManager.instance.designTokens.spacing.x2,
            ),
            _buildSpacingPreview(
              'x2Half',
              NovaThemeManager.instance.designTokens.spacing.x2Half,
            ),
            _buildSpacingPreview(
              'x3',
              NovaThemeManager.instance.designTokens.spacing.x3,
            ),
            _buildSpacingPreview(
              'x4',
              NovaThemeManager.instance.designTokens.spacing.x4,
            ),
            _buildSpacingPreview(
              'x5',
              NovaThemeManager.instance.designTokens.spacing.x5,
            ),
            _buildSpacingPreview(
              'x6',
              NovaThemeManager.instance.designTokens.spacing.x6,
            ),
            _buildSpacingPreview(
              'x7',
              NovaThemeManager.instance.designTokens.spacing.x7,
            ),
            _buildSpacingPreview(
              'x8',
              NovaThemeManager.instance.designTokens.spacing.x8,
            ),
            _buildSpacingPreview(
              'x9',
              NovaThemeManager.instance.designTokens.spacing.x9,
            ),
            _buildSpacingPreview(
              'x10',
              NovaThemeManager.instance.designTokens.spacing.x10,
            ),
            _buildSpacingPreview(
              'x11',
              NovaThemeManager.instance.designTokens.spacing.x11,
            ),
            _buildSpacingPreview(
              'x12',
              NovaThemeManager.instance.designTokens.spacing.x12,
            ),
            _buildSpacingPreview(
              'x14',
              NovaThemeManager.instance.designTokens.spacing.x14,
            ),
            _buildSpacingPreview(
              'x16',
              NovaThemeManager.instance.designTokens.spacing.x16,
            ),
            _buildSpacingPreview(
              'x18',
              NovaThemeManager.instance.designTokens.spacing.x18,
            ),
            _buildSpacingPreview(
              'x20',
              NovaThemeManager.instance.designTokens.spacing.x20,
            ),
            _buildSpacingPreview(
              'x22',
              NovaThemeManager.instance.designTokens.spacing.x22,
            ),
            _buildSpacingPreview(
              'x24',
              NovaThemeManager.instance.designTokens.spacing.x24,
            ),
            _buildSpacingPreview(
              'x26',
              NovaThemeManager.instance.designTokens.spacing.x26,
            ),
            _buildSpacingPreview(
              'x28',
              NovaThemeManager.instance.designTokens.spacing.x28,
            ),
            _buildSpacingPreview(
              'x30',
              NovaThemeManager.instance.designTokens.spacing.x30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpacingPreview(String name, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: NovaThemeManager.instance.designTokens.spacing.x10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${value.toInt()}px',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: NovaThemeManager.instance.designTokens.spacing.x14,
          ),
          Container(
            width: value,
            height: NovaThemeManager.instance.designTokens.spacing.x14,
            color: NovaThemeManager.instance.colors.core.novaRage.baseColor,
          ),
        ],
      ),
    );
  }
}
