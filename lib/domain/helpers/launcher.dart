import 'package:url_launcher/url_launcher.dart';

class ULauncher {
  static Future whatsapp(String number, {String? message = ''}) {
    number = '+$number';
    var url = 'whatsapp://send?phone=$number&text=${message ?? ''}';
    return launchUrl(Uri.parse(url));
  }
}
