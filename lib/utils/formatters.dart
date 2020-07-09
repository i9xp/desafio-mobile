import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Formatters {
  static MoneyFormatterOutput brl(double currency) {
    return new FlutterMoneyFormatter(
      amount: currency,
      settings: MoneyFormatterSettings(
        symbol: 'R\$',
        thousandSeparator: '.',
        decimalSeparator: ',',
        symbolAndNumberSeparator: ' ',
        fractionDigits: 2,
        compactFormatType: CompactFormatType.short,
      ),
    ).output;
  }
}
