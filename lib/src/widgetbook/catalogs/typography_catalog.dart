import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';
import 'package:widgetbook/widgetbook.dart';

class TypographyCatalog extends StatefulWidget {
  const TypographyCatalog({super.key});

  @override
  State<TypographyCatalog> createState() => _TypographyCatalogState();
}

class _TypographyCatalogState extends State<TypographyCatalog> {
  @override
  Widget build(BuildContext context) {
    final textStyles = NovaThemeManager.instance.textStyles;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Typography',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          _buildTextStyleSection(
              'Extreme Extra Small (XXS)', textStyles.xtremeXs),
          _buildTextStyleSection('Extra Small (XS)', textStyles.xs),
          _buildTextStyleSection('Extra Small 3 (XS3)', textStyles.xs3),
          _buildTextStyleSection('Extra Small 2 (XS2)', textStyles.xs2),
          _buildTextStyleSection('Small (S)', textStyles.s),
          _buildTextStyleSection('Medium (M)', textStyles.m),
          _buildTextStyleSection('Large (L)', textStyles.l),
          _buildTextStyleSection('Extra Large (XL)', textStyles.xl),
          _buildTextStyleSection('Extra Large 2 (XL2)', textStyles.xl2),
          _buildTextStyleSection('Extra Large 3 (XL3)', textStyles.xl3),
          _buildTextStyleSection('Extra Large 4 (XL4)', textStyles.xl4),
          _buildTextStyleSection('Extra Large 5 (XL5)', textStyles.xl5),
        ],
      ),
    );
  }

  Widget _buildTextStyleSection(String title, UnifiedTextStyles style) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          _buildTextStyleVariant('Regular', style.regular),
          _buildTextStyleVariant('Medium', style.medium),
          _buildTextStyleVariant('Semi Bold', style.semiBold),
          _buildTextStyleVariant('Extra Bold', style.extraBold),
        ],
      ),
    );
  }

  Widget _buildTextStyleVariant(String weight, TextStyle style) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  weight,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  '${style.fontSize?.round()}px',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                if (style.letterSpacing != null) ...[
                  const SizedBox(width: 16),
                  Text(
                    'Letter Spacing: ${style.letterSpacing?.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
                if (style.height != null) ...[
                  const SizedBox(width: 16),
                  Text(
                    'Line Height: ${style.height?.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'The quick brown fox jumps over the lazy dog',
              style: style.copyWith(
                fontFamily: context.knobs.list(
                  label: "Font Family",
                  options: [
                    'Inter',
                    'RobotoMono',
                  ],
                  initialOption: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
