/// Spacing tokens
class SpacingTokens {
  final double x0;
  final double halfX;
  final double x1Half;
  final double x2;
  final double x2Half;
  final double x3;
  final double x4;
  final double x5;
  final double x6;
  final double x7;
  final double x8;
  final double x9;
  final double x10;
  final double x11;
  final double x12;
  final double x14;
  final double x16;
  final double x18;
  final double x20;
  final double x22;
  final double x24;
  final double x26;
  final double x28;
  final double x30;
  final double baseline;

  const SpacingTokens({
    required this.x0,
    required this.halfX,
    required this.x1Half,
    required this.x2,
    required this.x2Half,
    required this.x3,
    required this.x4,
    required this.x5,
    required this.x6,
    required this.x7,
    required this.x8,
    required this.x9,
    required this.x10,
    required this.x11,
    required this.x12,
    required this.x14,
    required this.x16,
    required this.x18,
    required this.x20,
    required this.x22,
    required this.x24,
    required this.x26,
    required this.x28,
    required this.x30,
    required this.baseline,
  });

  factory SpacingTokens.fromJson(Map<String, dynamic> json) {
    return SpacingTokens(
      x0: double.parse(json['spacing-0x']['value']),
      halfX: double.parse(json['spacing-halfx']['value']),
      x1Half: double.parse(json['spacing-1halfx']['value']),
      x2: double.parse(json['spacing-2x']['value']),
      x2Half: double.parse(json['spacing-2halfx']['value']),
      x3: double.parse(json['spacing-3x']['value']),
      x4: double.parse(json['spacing-4x']['value']),
      x5: double.parse(json['spacing-5x']['value']),
      x6: double.parse(json['spacing-6x']['value']),
      x7: double.parse(json['spacing-7x']['value']),
      x8: double.parse(json['spacing-8x']['value']),
      x9: double.parse(json['spacing-9x']['value']),
      x10: double.parse(json['spacing-10x']['value']),
      x11: double.parse(json['spacing-11x']['value']),
      x12: double.parse(json['spacing-12x']['value']),
      x14: double.parse(json['spacing-14x']['value']),
      x16: double.parse(json['spacing-16x']['value']),
      x18: double.parse(json['spacing-18x']['value']),
      x20: double.parse(json['spacing-20x']['value']),
      x22: double.parse(json['spacing-22x']['value']),
      x24: double.parse(json['spacing-24x']['value']),
      x26: double.parse(json['spacing-26x']['value']),
      x28: double.parse(json['spacing-28x']['value']),
      x30: double.parse(json['spacing-30x']['value']),
      baseline: double.parse(json['spacing-baseline']['value']),
    );
  }
}
