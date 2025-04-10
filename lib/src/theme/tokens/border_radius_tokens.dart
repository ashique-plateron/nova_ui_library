/// Border radius tokens
class BorderRadiusTokens {
  final double baseline;
  final double fullyRounded;
  final double hard;
  final double l;
  final double m;
  final double soft;
  final double superSoft;
  final double ultraSoft;
  final double xl;
  final double xtraSoft;

  const BorderRadiusTokens({
    required this.baseline,
    required this.fullyRounded,
    required this.hard,
    required this.l,
    required this.m,
    required this.soft,
    required this.superSoft,
    required this.ultraSoft,
    required this.xl,
    required this.xtraSoft,
  });

  factory BorderRadiusTokens.fromJson(Map<String, dynamic> json) {
    return BorderRadiusTokens(
      baseline: double.parse(json['baseline']['value']),
      fullyRounded: double.parse(json['fully-rounded']['value']),
      hard: double.parse(json['hard']['value']),
      l: double.parse(json['l']['value']),
      m: double.parse(json['m']['value']),
      soft: double.parse(json['soft']['value']),
      superSoft: double.parse(json['super-soft']['value']),
      ultraSoft: double.parse(json['ultra-soft']['value']),
      xl: double.parse(json['xl']['value']),
      xtraSoft: double.parse(json['xtra-soft']['value']),
    );
  }
}


class NovaBorderStyles{



  

}