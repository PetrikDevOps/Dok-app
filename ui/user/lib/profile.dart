import 'package:http/http.dart' as http;
import 'package:user/glob.dart' as glob;

// Retrieves the profile picture from the backend using the cookie we got from MS
Future<String> getPfp(String cookie) async {
  try {
    final response = await http
        .get(Uri.parse('${glob.appUrl}pfp'), headers: {'Cookie': cookie});

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Request failed with status: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}

// Get the userData for the currently logged in user!
// TODO: Retrun the map containing the userdata
Future<String> getUserData(String cookie) async {
  try {
    final response = await http
        .get(Uri.parse('${glob.appUrl}userdata'), headers: {'Cookie': cookie});

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Request failed with status: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}
