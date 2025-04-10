/// Letter spacing tokens
class LetterSpacingTokens {
  final double comfortable;
  final double compact;
  final double concise;
  final double defaultValue;
  final double relaxed;
  final double ultraCompact;
  final double ultraLounge;

  const LetterSpacingTokens({
    required this.comfortable,
    required this.compact,
    required this.concise,
    required this.defaultValue,
    required this.relaxed,
    required this.ultraCompact,
    required this.ultraLounge,
  });

  factory LetterSpacingTokens.fromJson(Map<String, dynamic> json) {
    return LetterSpacingTokens(
      comfortable: double.parse(json['comfortable']['value']),
      compact: double.parse(json['compact']['value']),
      concise: double.parse(json['concise']['value']),
      defaultValue: double.parse(json['default']['value']),
      relaxed: double.parse(json['relaxed']['value']),
      ultraCompact: double.parse(json['ultra-compact']['value']),
      ultraLounge: double.parse(json['ultra-lounge']['value']),
    );
  }
}
