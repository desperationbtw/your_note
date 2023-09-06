import 'package:intl/intl.dart';

abstract class DateFormatter {
  static String format(DateTime date) {
    final formatter = DateFormat('dd MMMM yyyy, hh:mm');
    return formatter.format(date);
  }
}
