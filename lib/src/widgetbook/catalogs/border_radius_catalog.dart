import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

class BorderRadiusCatalog extends StatelessWidget {
  const BorderRadiusCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = NovaThemeManager.instance.designTokens.borderRadius;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Border Radius',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          _buildBorderRadiusItem('Hard', borderRadius.hard),
          _buildBorderRadiusItem('Baseline', borderRadius.baseline),
          _buildBorderRadiusItem('Soft', borderRadius.soft),
          _buildBorderRadiusItem('Extra Soft', borderRadius.xtraSoft),
          _buildBorderRadiusItem('Super Soft', borderRadius.superSoft),
          _buildBorderRadiusItem('Ultra Soft', borderRadius.ultraSoft),
          _buildBorderRadiusItem('Medium', borderRadius.m),
          _buildBorderRadiusItem('Large', borderRadius.l),
          _buildBorderRadiusItem('Extra Large', borderRadius.xl),
          _buildBorderRadiusItem('Fully Rounded', borderRadius.fullyRounded),
        ],
      ),
    );
  }

  Widget _buildBorderRadiusItem(String name, double value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '${value.round()}px',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildBorderRadiusExample(
                value,
                'Top Left',
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(value)),
              ),
              const SizedBox(width: 16),
              _buildBorderRadiusExample(
                value,
                'Top Right',
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(value)),
              ),
              const SizedBox(width: 16),
              _buildBorderRadiusExample(
                value,
                'Bottom Left',
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(value)),
              ),
              const SizedBox(width: 16),
              _buildBorderRadiusExample(
                value,
                'Bottom Right',
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(value)),
              ),
              const SizedBox(width: 16),
              _buildBorderRadiusExample(
                value,
                'All Corners',
                borderRadius: BorderRadius.all(Radius.circular(value)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBorderRadiusExample(
    double value,
    String label, {
    required BorderRadius borderRadius,
  }) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: borderRadius,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
