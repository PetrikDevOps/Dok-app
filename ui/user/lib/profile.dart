import 'package:http/http.dart' as http;
import 'package:user/glob.dart' as glob;

// Retrieves the profile picture from the backend using the cookie we got from MS
// TODO: Use the cookie
Future<String> getPfp(String cookie) async {
  try {
    final response = await http.get(Uri.parse('${glob.appUrl}pfp'));

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
// TODO: Retrun the struct containing the userdata
Future<String> getUserData(String cookie) async {
  try {
    final response = await http.get(Uri.parse('${glob.appUrl}userdata'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Request failed with status: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}
