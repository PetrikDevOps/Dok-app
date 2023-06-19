import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Open a web view to login.
Future<String> getLoginUrl() async {
  try {
    final response = await http.post(Uri.parse('http://10.0.2.2:5000/login'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Request failed with status: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}

class LoginWebView extends StatefulWidget {
  final String uri;

  const LoginWebView({super.key, required this.uri});

  @override
  State<LoginWebView> createState() => _LoginWebViewState();
}

class _LoginWebViewState extends State<LoginWebView> {
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(CupertinoColors.systemBackground)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.uri)),
    );
  }
}

class LoginWebViewScaffold extends StatefulWidget {
  // TODO: THIS IS REALLY STUPID WE PASS TROUGH TWO WIDGETS UNIFY EM!
  final String uri;

  const LoginWebViewScaffold({super.key, required this.uri});

  @override
  State<LoginWebViewScaffold> createState() => _LoginWebViewScaffoldState();
}

class _LoginWebViewScaffoldState extends State<LoginWebViewScaffold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: LoginWebView(uri: widget.uri,),
          ),
        ],
      ),
    );
  }
}
