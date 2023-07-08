import 'glob.dart' as glob;

// Import http for requests
import 'package:http/http.dart' as http;

// Import Cupertino for the widgets and webview for opening the login page provided by the backend.
import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as webview;

// Open a web view to login.
Future<String> getLoginUrl() async {
  // Attempt to get a login url from the backend.
  try {
    final response = await http.post(Uri.parse('${glob.appUrl}login'));

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
  final String loginUrl;

  const LoginWebView({super.key, required this.loginUrl});

  @override
  State<LoginWebView> createState() => _LoginWebViewState();
}

class _LoginWebViewState extends State<LoginWebView> {
  @override
  Widget build(BuildContext context) {
    return webview.InAppWebView(initialUrlRequest: webview.URLRequest(url: Uri.parse(widget.loginUrl)));
  }
}