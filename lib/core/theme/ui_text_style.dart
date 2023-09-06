import 'package:flutter/widgets.dart';

class UITextStyle {
  static TextStyle appBar(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );

  /// Header, используется как заголовок
  static TextStyle header(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );

  /// Title, обычный текст
  static TextStyle title(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );

  /// TitleMed, обычный текст, но более жирный для акцента
  static TextStyle titleMed(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );

  /// SubTitle, текст второго порядка
  static TextStyle subTitle(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );

  // Caption, текст третьего порядка, который вообще можно и не читать
  static TextStyle caption(Color color) => TextStyle(
        fontFamily: 'Roboto',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        leadingDistribution: TextLeadingDistribution.even,
        color: color,
      );
}
