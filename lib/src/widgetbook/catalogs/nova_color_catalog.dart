import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/nova_theme_manager.dart';

class NovaColorCatalog extends StatelessWidget {
  const NovaColorCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = NovaThemeManager.instance.colors;
    final textStyles = NovaThemeManager.instance.textStyles;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Input Colors
              _buildCategoryHeader("Input Colors", textStyles),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Border',
                colors: [
                  ColorData('Default', colors.input.borderDefault),
                  ColorData('Filled', colors.input.borderFilled),
                  ColorData('Focused', colors.input.borderFocused),
                ],
              ),

              const SizedBox(height: 32),

              // Action Colors
              _buildCategoryHeader("Action Colors", textStyles),
              const SizedBox(height: 16),
              _buildSubcategoryHeader("Primary", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Background',
                colors: [
                  ColorData(
                      'Default', colors.action.primary.background.defaultColor),
                  ColorData('Hover', colors.action.primary.background.hover),
                  ColorData(
                      'Pressed', colors.action.primary.background.pressed),
                  ColorData(
                      'Disabled', colors.action.primary.background.disabled),
                ],
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Border',
                colors: [
                  ColorData(
                      'Default', colors.action.primary.border.defaultColor),
                  ColorData('Hover', colors.action.primary.border.hover),
                  ColorData('Pressed', colors.action.primary.border.pressed),
                  ColorData('Disabled', colors.action.primary.border.disabled),
                ],
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Secondary", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Background',
                colors: [
                  ColorData('Default',
                      colors.action.secondary.background.defaultColor),
                  ColorData('Hover', colors.action.secondary.background.hover),
                  ColorData(
                      'Pressed', colors.action.secondary.background.pressed),
                  ColorData(
                      'Disabled', colors.action.secondary.background.disabled),
                ],
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Border',
                colors: [
                  ColorData(
                      'Default', colors.action.primary.border.defaultColor),
                  ColorData('Hover', colors.action.secondary.border.hover),
                  ColorData('Pressed', colors.action.secondary.border.pressed),
                  ColorData(
                      'Disabled', colors.action.secondary.border.disabled),
                ],
              ),

              const SizedBox(height: 32),

              // Alias Colors
              _buildCategoryHeader("Alias Colors", textStyles),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Background',
                colors: [
                  ColorData(
                      'Page Default', colors.alias.background.pageDefault),
                  ColorData('Page Dim', colors.alias.background.pageDim),
                  ColorData(
                      'Page Dimmest', colors.alias.background.pageDimmest),
                  ColorData('Page Light', colors.alias.background.pageLight),
                ],
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Icon',
                colors: [
                  ColorData('Brand', colors.alias.icon.brand),
                  ColorData('Invert Primary', colors.alias.icon.invertPrimary),
                  ColorData(
                      'Invert Secondary', colors.alias.icon.invertSecondary),
                  ColorData(
                      'Invert Tertiary', colors.alias.icon.invertTertiary),
                  ColorData('Negative', colors.alias.icon.negative),
                  ColorData('Positive', colors.alias.icon.positive),
                  ColorData('Primary', colors.alias.icon.primary),
                  ColorData('Secondary', colors.alias.icon.secondary),
                  ColorData('Tertiary', colors.alias.icon.tertiary),
                  ColorData('Warn', colors.alias.icon.warn),
                ],
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Type',
                colors: [
                  ColorData('Brand Primary', colors.alias.type.brandPrimary),
                  ColorData('Brand Primary Disabled',
                      colors.alias.type.brandPrimaryDisable),
                  ColorData('Invert Placeholder',
                      colors.alias.type.invertPlaceholder),
                  ColorData('Invert Primary', colors.alias.type.invertPrimary),
                  ColorData(
                      'Invert Secondary', colors.alias.type.invertSecondary),
                  ColorData('Negative', colors.alias.type.negative),
                  ColorData('Neutral Tone', colors.alias.type.neutralTone),
                  ColorData('Placeholder', colors.alias.type.placeholder),
                  ColorData('Positive', colors.alias.type.positive),
                  ColorData('Primary', colors.alias.type.primary),
                  ColorData('Secondary', colors.alias.type.secondary),
                  ColorData('Warn', colors.alias.type.warn),
                ],
              ),

              const SizedBox(height: 32),

              // Core Colors
              _buildCategoryHeader("Core Colors", textStyles),
              const SizedBox(height: 16),

              _buildSubcategoryHeader("Nova Rage", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Solids',
                colors: [
                  ColorData('Solid 100', colors.core.novaRage.solid100),
                  ColorData('Solid 200', colors.core.novaRage.solid200),
                  ColorData('Solid 300', colors.core.novaRage.solid300),
                  ColorData('Solid 400', colors.core.novaRage.solid400),
                  ColorData('Solid 500', colors.core.novaRage.solid500),
                  ColorData('Solid 600', colors.core.novaRage.solid600),
                  ColorData('Solid 700', colors.core.novaRage.solid700),
                  ColorData('Solid 800', colors.core.novaRage.solid800),
                  ColorData('Solid 900', colors.core.novaRage.solid900),
                ],
                isGradient: true,
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Alpha',
                colors: [
                  ColorData('Base', colors.core.novaRage.alphaBase),
                  ColorData('Alpha 02', colors.core.novaRage.alpha02),
                  ColorData('Alpha 05', colors.core.novaRage.alpha05),
                  ColorData('Alpha 10', colors.core.novaRage.alpha10),
                  ColorData('Alpha 20', colors.core.novaRage.alpha20),
                  ColorData('Alpha 40', colors.core.novaRage.alpha40),
                  ColorData('Alpha 60', colors.core.novaRage.alpha60),
                ],
                isGradient: true,
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Nova Blush", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Solids',
                colors: [
                  ColorData('Solid 100', colors.core.novaBlush.solid100),
                  ColorData('Solid 200', colors.core.novaBlush.solid200),
                  ColorData('Solid 300', colors.core.novaBlush.solid300),
                  ColorData('Solid 400', colors.core.novaBlush.solid400),
                  ColorData('Solid 500', colors.core.novaBlush.solid500),
                  ColorData('Solid 600', colors.core.novaBlush.solid600),
                  ColorData('Solid 700', colors.core.novaBlush.solid700),
                  ColorData('Solid 800', colors.core.novaBlush.solid800),
                  ColorData('Solid 900', colors.core.novaBlush.solid900),
                ],
                isGradient: true,
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Alpha',
                colors: [
                  ColorData('Alpha 05', colors.core.novaBlush.alpha05),
                  ColorData('Alpha 10', colors.core.novaBlush.alpha10),
                  ColorData('Alpha 20', colors.core.novaBlush.alpha20),
                  ColorData('Alpha 40', colors.core.novaBlush.alpha40),
                  ColorData('Alpha 60', colors.core.novaBlush.alpha60),
                ],
                isGradient: true,
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Lilac Haze", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Solids',
                colors: [
                  ColorData('Solid 100', colors.core.lilacHaze.solid100),
                  ColorData('Solid 200', colors.core.lilacHaze.solid200),
                  ColorData('Solid 300', colors.core.lilacHaze.solid300),
                  ColorData('Solid 400', colors.core.lilacHaze.solid400),
                  ColorData('Solid 500', colors.core.lilacHaze.solid500),
                ],
                isGradient: true,
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Alpha',
                colors: [
                  ColorData('Alpha 20', colors.core.lilacHaze.alpha20),
                  ColorData('Alpha 40', colors.core.lilacHaze.alpha40),
                ],
                isGradient: true,
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Morning Fog", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Solids',
                colors: [
                  ColorData('Solid 500', colors.core.morningFog.solid500),
                  ColorData('Solid 600', colors.core.morningFog.solid600),
                  ColorData('Solid 700', colors.core.morningFog.solid700),
                  ColorData('Solid 800', colors.core.morningFog.solid800),
                  ColorData('Solid 850', colors.core.morningFog.solid850),
                  ColorData('Solid 900', colors.core.morningFog.solid900),
                ],
                isGradient: true,
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Alpha',
                colors: [
                  ColorData('Alpha 10', colors.core.morningFog.alpha10),
                  ColorData('Alpha 20', colors.core.morningFog.alpha20),
                  ColorData('Alpha 40', colors.core.morningFog.alpha40),
                  ColorData('Alpha 60', colors.core.morningFog.alpha60),
                ],
                isGradient: true,
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Midnight Black", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: 'Solids',
                colors: [
                  ColorData('Solid 100', colors.core.midnightBlack.solid100),
                  ColorData('Solid 200', colors.core.midnightBlack.solid200),
                  ColorData('Solid 300', colors.core.midnightBlack.solid300),
                  ColorData('Solid 400', colors.core.midnightBlack.solid400),
                  ColorData('Solid 500', colors.core.midnightBlack.solid500),
                  ColorData('Solid 600', colors.core.midnightBlack.solid600),
                  ColorData('Solid 700', colors.core.midnightBlack.solid700),
                  ColorData('Solid 800', colors.core.midnightBlack.solid800),
                  ColorData('Solid 900', colors.core.midnightBlack.solid900),
                ],
                isGradient: true,
              ),
              const SizedBox(height: 16),
              _ColorSection(
                title: 'Alpha',
                colors: [
                  ColorData('Base', colors.core.midnightBlack.alphaBase),
                  ColorData('Alpha 10', colors.core.midnightBlack.alpha10),
                  ColorData('Alpha 20', colors.core.midnightBlack.alpha20),
                  ColorData('Alpha 40', colors.core.midnightBlack.alpha40),
                  ColorData('Alpha 60', colors.core.midnightBlack.alpha60),
                ],
                isGradient: true,
              ),

              const SizedBox(height: 24),
              _buildSubcategoryHeader("Semantic", textStyles),
              const SizedBox(height: 12),
              _ColorSection(
                title: '',
                colors: [
                  ColorData('Nova Sky', colors.core.semantics.novaSky),
                  ColorData('Nova Fury', colors.core.semantics.novaFury),
                  ColorData('Nova Leaf', colors.core.semantics.novaLeaf),
                  ColorData('Nova Gold', colors.core.semantics.novaGold),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String title, dynamic textStyles) {
    return Container(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0x20000000), width: 1),
        ),
      ),
      child: Text(
        title,
        style: textStyles.xl5.extraBold,
      ),
    );
  }

  Widget _buildSubcategoryHeader(String title, dynamic textStyles) {
    return Container(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        title,
        style: textStyles.xl3.semiBold,
      ),
    );
  }
}

class _ColorSection extends StatelessWidget {
  final String title;
  final List<ColorData> colors;
  final bool isGradient;

  const _ColorSection({
    required this.title,
    required this.colors,
    this.isGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Text(
              title,
              style: NovaThemeManager.instance.textStyles.l.semiBold,
            ),
          ),
          const SizedBox(height: 8),
        ],
        if (isGradient) _buildGradientView() else _buildGridView(),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220,
        childAspectRatio: 1.4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return _EnhancedColorItem(
            name: colors[index].name, color: colors[index].color);
      },
    );
  }

  Widget _buildGradientView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Row(
              children: List.generate(
                colors.length,
                (index) => Expanded(
                  child: Container(
                    color: colors[index].color,
                    child: Center(
                      child: Text(
                        colors[index].name.split(' ').last,
                        style: TextStyle(
                          color: colors[index].color.computeLuminance() > 0.1
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            childAspectRatio: 1.4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return _EnhancedColorItem(
                name: colors[index].name, color: colors[index].color);
          },
        ),
      ],
    );
  }
}

class _EnhancedColorItem extends StatelessWidget {
  final String name;
  final Color color;

  const _EnhancedColorItem({required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    final bool isDark = color.computeLuminance() < 0.5;
    final String hexCode =
        '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
    final String rgbValue = 'RGB(${color.red}, ${color.green}, ${color.blue})';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 3,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    hexCode,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    rgbValue,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorData {
  final String name;
  final Color color;

  ColorData(this.name, this.color);
}
