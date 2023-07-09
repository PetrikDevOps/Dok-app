import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:user/auth.dart';
import 'package:user/glob.dart' as glob;

// Get the userData for the currently logged in user!
// TODO: Retrun the map containing the userdata
Future<Map<String, dynamic>> getUserData(String cookie) async {
  try {
    final response = await http.get(Uri.parse('${glob.appUrl}userdata'),
        headers: {'Cookie': 'session=$cookie'});

    if (response.statusCode == 200) {
      return JsonCodec().decode(response.body);
    } else {
      return {'error_code': response.statusCode};
    }
  } catch (e) {
    return {'error': e};
  }
}

Future<String> getPfp(String cookie) async {
  try {
    final response = await http.get(Uri.parse('${glob.appUrl}pfp'),
        headers: {'Cookie': 'session=$cookie'});

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'error_code';
    }
  } catch (e) {
    return 'error';
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      // TODO: store glob.cookie in local storage instead of taking it from the webview all the time.
      future: getSession(glob.cookieManager),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('session=${snapshot.data}');

          return Column(
            children: [
              FutureBuilder(
                future: getPfp(snapshot.data!),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.memory(
                        Uint8List.fromList(snapshot.data!.codeUnits),
                        width: 120,
                      ),
                    );
                  } else {
                    return Text('Problem?');
                  }
                },
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
