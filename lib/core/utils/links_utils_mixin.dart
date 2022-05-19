// import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

mixin LinksUtilsMixin {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void openInNewTab(String url) {
    // window.open(this.href, '_blank');
    launch(url);
  }

  launchEmail(String email) {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{'subject': ' Title'}),
    );

    launch(emailLaunchUri.toString());
  }
}
