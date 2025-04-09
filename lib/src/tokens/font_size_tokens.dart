/// Font size tokens
class FontSizeTokens {
  final double xl2;
  final double xs2;
  final double xl3;
  final double xs3;
  final double xl4;
  final double xl5;
  final double l;
  final double m;
  final double s;
  final double xl;
  final double xs;
  final double xxs;

  const FontSizeTokens({
    required this.xl2,
    required this.xs2,
    required this.xl3,
    required this.xs3,
    required this.xl4,
    required this.xl5,
    required this.l,
    required this.m,
    required this.s,
    required this.xl,
    required this.xs,
    required this.xxs,
  });

  factory FontSizeTokens.fromJson(Map<String, dynamic> json) {
    return FontSizeTokens(
      xl2: double.parse(json['2xl']['value']),
      xs2: double.parse(json['2xs']['value']),
      xl3: double.parse(json['3xl']['value']),
      xs3: double.parse(json['3xs']['value']),
      xl4: double.parse(json['4xl']['value']),
      xl5: double.parse(json['5xl']['value']),
      l: double.parse(json['l']['value']),
      m: double.parse(json['m']['value']),
      s: double.parse(json['s']['value']),
      xl: double.parse(json['xl']['value']),
      xs: double.parse(json['xs']['value']),
      xxs: double.parse(json['xxs']['value']),
    );
  }
}
