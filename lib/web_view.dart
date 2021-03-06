import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: WebView(
            initialUrl: 'https://medium.com',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        )
    );
  }
}
