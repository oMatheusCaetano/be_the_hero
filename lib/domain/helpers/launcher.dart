import 'package:url_launcher/url_launcher.dart';

class ULauncher {
  static Future<bool> mail(String to, {required String subject, String? body }) {
    return launch('mailto:$to?subject=$subject&body=${body ?? ''}');
  }

  static Future<bool> whatsapp(String number, {String? message = ''}) {
    number = '+$number';
    return launch('whatsapp://send?phone=$number&text=${message ?? ''}');
  }

  static Future<bool> launch(String url) async {
    final uri = Uri.parse(url);
    // final canLaunch = await canLaunchUrl(uri);
    // return canLaunch ? launchUrl(uri) : Future.value(false);
    return launchUrl(uri);
  }
}
