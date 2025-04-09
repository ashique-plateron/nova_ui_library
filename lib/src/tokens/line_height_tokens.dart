/// Line height tokens
class LineHeightTokens {
  final double xl2Paragraph;
  final double xs2Paragraph;
  final double xl3Paragraph;
  final double xs3Paragraph;
  final double xl4Paragraph;
  final double xl5Paragraph;
  final double lParagraph;
  final double mParagraph;
  final double sParagraph;
  final double xlParagraph;
  final double xsParagraph;
  final double xxsParagraph;

  const LineHeightTokens({
    required this.xl2Paragraph,
    required this.xs2Paragraph,
    required this.xl3Paragraph,
    required this.xs3Paragraph,
    required this.xl4Paragraph,
    required this.xl5Paragraph,
    required this.lParagraph,
    required this.mParagraph,
    required this.sParagraph,
    required this.xlParagraph,
    required this.xsParagraph,
    required this.xxsParagraph,
  });

  factory LineHeightTokens.fromJson(Map<String, dynamic> json) {
    return LineHeightTokens(
      xl2Paragraph: double.parse(json['2xl-paragraph']['value']),
      xs2Paragraph: double.parse(json['2xs-paragraph']['value']),
      xl3Paragraph: double.parse(json['3xl-paragraph']['value']),
      xs3Paragraph: double.parse(json['3xs-paragraph']['value']),
      xl4Paragraph: double.parse(json['4xl-paragraph']['value']),
      xl5Paragraph: double.parse(json['5xl-paragraph']['value']),
      lParagraph: double.parse(json['l-paragraph']['value']),
      mParagraph: double.parse(json['m-paragraph']['value']),
      sParagraph: double.parse(json['s-paragraph']['value']),
      xlParagraph: double.parse(json['xl-paragraph']['value']),
      xsParagraph: double.parse(json['xs-paragraph']['value']),
      xxsParagraph: double.parse(json['xxs-paragraph']['value']),
    );
  }
}
