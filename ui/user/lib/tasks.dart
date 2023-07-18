import 'dart:convert';

import 'package:http/http.dart' as http;
import 'glob.dart' as glob;

// Attempts to get the tasks of the currently logged in user.
Future<Map<String, dynamic>> getTasks(String cookie) async {
  try {
    final response = await http.post(
      Uri.parse('${glob.appUrl}tasks'),
      headers: {
        'Cookie': 'session=$cookie',
      },
    );

    if (response.statusCode == 200) {
      return const JsonCodec().decode(response.body);
    } else {
      return {'error_code': response.statusCode};
    }
  } catch (e) {
    return {'error': e};
  }
}
