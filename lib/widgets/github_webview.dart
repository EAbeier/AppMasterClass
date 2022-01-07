import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({Key? key}) : super(key: key);

  @override
  _GitHubWebViewState createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://github.com/EAbeier',
    );
  }
}
