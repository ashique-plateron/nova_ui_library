import 'package:flutter/material.dart';
import 'package:nova_ui_library/nova_ui_library.dart';

class AppTypoGraphy {
  final UnifiedTextStyles xtremeXs;
  final UnifiedTextStyles xs3;
  final UnifiedTextStyles xs2;
  final UnifiedTextStyles xs;
  final UnifiedTextStyles s;
  final UnifiedTextStyles m;
  final UnifiedTextStyles l;
  final UnifiedTextStyles xl;
  final UnifiedTextStyles xl2;
  final UnifiedTextStyles xl3;
  final UnifiedTextStyles xl4;
  final UnifiedTextStyles xl5;

  AppTypoGraphy({
    required this.xtremeXs,
    required this.xs3,
    required this.xs2,
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xl2,
    required this.xl3,
    required this.xl4,
    required this.xl5,
  });

  factory AppTypoGraphy.fromToken(NovaDesignTokens tokens) {
    return AppTypoGraphy(
      xtremeXs: UnifiedTextStyles(
        fontSize: tokens.fontSize.xxs,
        letterSpacing: tokens.letterSpacing.defaultValue,
        height: tokens.lineHeight.xxsParagraph / tokens.fontSize.xxs,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xs3: UnifiedTextStyles(
        fontSize: tokens.fontSize.xs3,
        letterSpacing: tokens.letterSpacing.defaultValue,
        height: tokens.lineHeight.xs3Paragraph / tokens.fontSize.xs3,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xs2: UnifiedTextStyles(
        fontSize: tokens.fontSize.xs2,
        letterSpacing: tokens.letterSpacing.defaultValue,
        height: tokens.lineHeight.xs2Paragraph / tokens.fontSize.xs2,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xs: UnifiedTextStyles(
        fontSize: tokens.fontSize.xs,
        letterSpacing: tokens.letterSpacing.concise,
        height: tokens.lineHeight.xsParagraph / tokens.fontSize.xs,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      s: UnifiedTextStyles(
        fontSize: tokens.fontSize.s,
        letterSpacing: tokens.letterSpacing.concise,
        height: tokens.lineHeight.sParagraph / tokens.fontSize.s,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      m: UnifiedTextStyles(
        fontSize: tokens.fontSize.m,
        letterSpacing: tokens.letterSpacing.concise,
        height: tokens.lineHeight.mParagraph / tokens.fontSize.m,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      l: UnifiedTextStyles(
        fontSize: tokens.fontSize.l,
        letterSpacing: tokens.letterSpacing.concise,
        height: tokens.lineHeight.lParagraph / tokens.fontSize.l,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xl: UnifiedTextStyles(
        fontSize: tokens.fontSize.xl,
        letterSpacing: tokens.letterSpacing.concise,
        height: tokens.lineHeight.xlParagraph / tokens.fontSize.xl,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xl2: UnifiedTextStyles(
        fontSize: tokens.fontSize.xl2,
        letterSpacing: tokens.letterSpacing.compact,
        height: tokens.lineHeight.xl2Paragraph / tokens.fontSize.xl2,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xl3: UnifiedTextStyles(
        fontSize: tokens.fontSize.xl3,
        letterSpacing: tokens.letterSpacing.compact,
        height: tokens.lineHeight.xl3Paragraph / tokens.fontSize.xl3,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xl4: UnifiedTextStyles(
        fontSize: tokens.fontSize.xl4,
        letterSpacing: tokens.letterSpacing.ultraCompact,
        height: tokens.lineHeight.xl4Paragraph / tokens.fontSize.xl4,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
      xl5: UnifiedTextStyles(
        fontSize: tokens.fontSize.xl5,
        letterSpacing: tokens.letterSpacing.ultraCompact,
        height: tokens.lineHeight.xl5Paragraph / tokens.fontSize.xl5,
        fontWeight: FontWeight.w400,
        color: tokens.colors.universalBlack,
        fontFamily: tokens.fontFamily.inter,
      ),
    );
  }
}

class UnifiedTextStyles extends TextStyle {
  const UnifiedTextStyles({
    required super.fontSize,
    required super.height,
    required super.letterSpacing,
    required super.fontWeight,
    required super.color,
    required super.fontFamily,
  });
  TextStyle get regular => this;

  TextStyle get medium => copyWith(
        fontWeight: FontWeight.w500,
      );
  TextStyle get semiBold => copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get extraBold => copyWith(
        fontWeight: FontWeight.w800,
      );
}
