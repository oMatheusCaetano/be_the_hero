import 'package:intl/intl.dart';

class HeroCase {
  final String id;
  final String title;
  final String ong;
  final String? description;
  final double? neededValue;
  final String? email;
  final String? cellphone;

  HeroCase({
    required this.id,
    required this.title,
    required this.ong,
    this.description,
    this.neededValue,
    this.email,
    this.cellphone,
  });

  String neededValueToCurrency() {
    return (neededValue != null)
        ? NumberFormat.simpleCurrency(locale: 'pt_BR').format(neededValue)
        : '';
  }
}
