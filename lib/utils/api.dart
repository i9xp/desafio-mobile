import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  static final String hostDev =
      'https://5f03f61f4c6a2b00164905dd.mockapi.io/i9xp';
  static final String hostPrd =
      'https://5f03f61f4c6a2b00164905dd.mockapi.io/i9xp';
  static final String host = hostDev;
  static final String basicAuth = 'Basic <credential i9xp>';

  static makePost(String endPoint, Map<String, String> headers,
      Map<String, dynamic> body) async {
    var uri = host + endPoint;

    print('HTTP Request POST: ' + uri);

    var response = await http.post(uri,
        headers: headers, body: utf8.encode(jsonEncode(body)));

    return response;
  }

  static makeGet(String endPoint, Map<String, String> headers) async {
    var uri = host + endPoint;

    print('HTTP Request GET: ' + uri);

    var response = await http.get(
      uri,
      headers: headers,
    );

    return response;
  }
}
