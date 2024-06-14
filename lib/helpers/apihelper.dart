import 'dart:convert';
import 'package:http/http.dart' as http;

class APIHelper {
  // Post Request
  postRequest({
    required String route,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    try {
      String url = route;
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: token == null ? _headers() : _headersWithToken(token),
      );
      return response;
    } catch (e) {
      return e;
    }
  }

  /// Get Request
  getRequest({
    required String route,
    required String token,
  }) async {
    try {
      String url = route;
      final response = await http.get(
        Uri.parse(url),
        headers: _headersWithToken(token),
      );
      return response;
    } catch (e) {
      return e;
    }
  }

  //Update Request
   patchRequest({
    required String route,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    try {
      String url = route;
      final response = await http.patch(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: token == null ? _headers() : _headersWithToken(token),
      );
      return response;
    } catch (e) {
      return e;
    }
  }

  _headersWithToken(token) => {
        "Content-Type": 'application/json',
        'Accept': 'application/json',
        // ignore: prefer_interpolation_to_compose_strings
        'Authorization': 'Bearer ' + token,
      };
  _headers() => {
        "Content-Type": 'application/json',
        'Accept': 'application/json',
      };
}
