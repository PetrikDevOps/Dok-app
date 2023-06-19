import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Open a web view to login.
String login() {
  return 'Utalom a feher embereket baszod!';
}

class LoginWebView extends StatefulWidget {
  const LoginWebView({super.key});

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
        ..loadRequest(Uri.parse('https://flutter.dev')),
    );
  }
}

class LoginWebViewScaffold extends StatefulWidget {
  const LoginWebViewScaffold({super.key});

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
            child: LoginWebView(),
          ),
        ],
      ),
    );
  }
}
