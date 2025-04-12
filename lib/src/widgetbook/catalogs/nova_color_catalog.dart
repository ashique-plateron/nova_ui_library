import 'package:flutter/material.dart';
import 'package:nova_ui_library/src/theme/nova_theme_manager.dart';

class NovaColorCatalog extends StatelessWidget {
  const NovaColorCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = NovaThemeManager.instance.designTokens.colors;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildColorSection('Core Colors', [
              _ColorItem('Midnight Black', colors.midnightBlack.baseColor),
              _ColorItem('Nova Rage', colors.novaRage.baseColor),
              _ColorItem('Lilac Haze', colors.lilacHaze.baseColor),
              _ColorItem('Nova Blush', colors.novaBlush.baseColor),
              _ColorItem('Morning Fog', colors.morningFog.baseColor),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Semantic Colors', [
              _ColorItem('Nova Sky', colors.novaSky.baseColor),
              _ColorItem('Nova Fury', colors.novaFury.baseColor),
              _ColorItem('Nova Leaf', colors.novaLeaf.baseColor),
              _ColorItem('Nova Gold', colors.novaGold.baseColor),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Accent Colors', [
              _ColorItem('Nova Bronze', colors.novaBronze),
              _ColorItem('Nova Deep', colors.novaDeep),
              _ColorItem('Nova Fern', colors.novaFern),
              _ColorItem('Nova Nebula', colors.novaNebula),
              _ColorItem('Nova Scarlet', colors.novaScarlet),
              _ColorItem('Nova Splash', colors.novaSplash),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Universal Colors', [
              _ColorItem('Universal Black', colors.universalBlack),
              _ColorItem('Universal White', colors.universalWhite),
            ]),
            SizedBox(
              height: NovaThemeManager.instance.designTokens.spacing.x16,
            ),
            Text(
              'Shades',
              style:
                  NovaThemeManager.instance.textStyles.xl5.extraBold.copyWith(
                height: 0,
              ),
            ),
            const SizedBox(height: 24),
            _buildColorSection('Nova Rage Shades', [
              _ColorItem('Base', colors.novaRage.alphaBase),
              _ColorItem('Solid 100', colors.novaRage.solid100),
              _ColorItem('Solid 200', colors.novaRage.solid200),
              _ColorItem('Solid 300', colors.novaRage.solid300),
              _ColorItem('Solid 400', colors.novaRage.solid400),
              _ColorItem('Solid 500', colors.novaRage.solid500),
              _ColorItem('Solid 600', colors.novaRage.solid600),
              _ColorItem('Solid 700', colors.novaRage.solid700),
              _ColorItem('Solid 800', colors.novaRage.solid800),
              _ColorItem('Solid 900', colors.novaRage.solid900),
              _ColorItem('Alpha 02', colors.novaRage.alpha02),
              _ColorItem('Alpha 05', colors.novaRage.alpha05),
              _ColorItem('Alpha 10', colors.novaRage.alpha10),
              _ColorItem('Alpha 20', colors.novaRage.alpha20),
              _ColorItem('Alpha 40', colors.novaRage.alpha40),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Lilac Haze Shades', [
              _ColorItem('Solid 200', colors.lilacHaze.solid200),
              _ColorItem('Solid 300', colors.lilacHaze.solid300),
              _ColorItem('Solid 400', colors.lilacHaze.solid400),
              _ColorItem('Solid 500', colors.lilacHaze.solid500),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Nova Blush Shades', [
              _ColorItem('Base', colors.novaBlush.alphaBase),
              _ColorItem('Solid 200', colors.novaBlush.solid200),
              _ColorItem('Solid 300', colors.novaBlush.solid300),
              _ColorItem('Solid 400', colors.novaBlush.solid400),
              _ColorItem('Solid 500', colors.novaBlush.solid500),
              _ColorItem('Solid 600', colors.novaBlush.solid600),
              _ColorItem('Solid 700', colors.novaBlush.solid700),
              _ColorItem('Solid 800', colors.novaBlush.solid800),
              _ColorItem('Alpha 05', colors.novaBlush.alpha05),
              _ColorItem('Alpha 10', colors.novaBlush.alpha10),
              _ColorItem('Alpha 20', colors.novaBlush.alpha20),
              _ColorItem('Alpha 40', colors.novaBlush.alpha40),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Morning Fog Shades', [
              _ColorItem('Solid 500', colors.morningFog.solid500),
              _ColorItem('Solid 600', colors.morningFog.solid600),
              _ColorItem('Solid 700', colors.morningFog.solid700),
              _ColorItem('Solid 800', colors.morningFog.solid800),
              _ColorItem('Solid 850', colors.morningFog.solid850),
              _ColorItem('Solid 900', colors.morningFog.solid900),
              _ColorItem('Alpha 20', colors.morningFog.alpha20),
              _ColorItem('Alpha 40', colors.morningFog.alpha40),
              _ColorItem('Alpha 60', colors.morningFog.alpha60),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Midnight Black Shades', [
              _ColorItem('Solid 300', colors.midnightBlack.solid300),
              _ColorItem('Solid 400', colors.midnightBlack.solid400),
              _ColorItem('Solid 500', colors.midnightBlack.solid500),
              _ColorItem('Solid 600', colors.midnightBlack.solid600),
              _ColorItem('Solid 900', colors.midnightBlack.solid900),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Nova Sky Shades', [
              _ColorItem('Base', colors.novaSky.alphaBase),
              _ColorItem('Alpha 10', colors.novaSky.alpha10),
              _ColorItem('Alpha 40', colors.novaSky.alpha40),
              _ColorItem('Alpha 20', colors.novaSky.alpha20),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Nova Fury Shades', [
              _ColorItem('Base', colors.novaFury.alphaBase),
              _ColorItem('Alpha 05', colors.novaFury.alpha05),
              _ColorItem('Alpha 10', colors.novaFury.alpha10),
              _ColorItem('Alpha 20', colors.novaFury.alpha20),
              _ColorItem('Alpha 40', colors.novaFury.alpha40),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Nova Leaf Shades', [
              _ColorItem('Base', colors.novaLeaf.baseColor),
              _ColorItem('Alpha 10', colors.novaLeaf.alpha10),
              _ColorItem('Alpha 20', colors.novaLeaf.alpha20),
              _ColorItem('Alpha 40', colors.novaLeaf.alpha40),
            ]),
            const SizedBox(height: 24),
            _buildColorSection('Nova Gold Shades', [
              _ColorItem('Base', colors.novaGold.alphaBase),
              _ColorItem('Alpha 10', colors.novaGold.alpha10),
              _ColorItem('Alpha 20', colors.novaGold.alpha20),
              _ColorItem('Alpha 40', colors.novaGold.alpha40),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildColorSection(String title, List<Widget> children) {
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
          children: children,
        ),
      ],
    );
  }
}

class _ColorItem extends StatelessWidget {
  final String name;
  final Color color;

  const _ColorItem(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              color:
                  color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '#${color.value.toRadixString(16).substring(2)}',
            style: TextStyle(
              color:
                  color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
