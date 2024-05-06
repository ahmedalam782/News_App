import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView({super.key, required this.url, required this.name});

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setNavigationDelegate(NavigationDelegate())
          ..loadRequest(
            Uri.parse(url),
          ),
      ),
    );
  }
}
