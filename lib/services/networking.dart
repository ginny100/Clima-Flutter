import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  // Constructor
  NetworkHelper(this.url);

  // Properties
  final String url;

  // Data getter
  Future getData() async {
    // Get the response
    // Good practice: import 'package:http/http.dart' as http;
    // Then, define a response this way so that later, when future you or someone else looks at this code,
    // they'll know Response and get() come from the http.dart package
    http.Response response = await http.get(Uri.parse(url));

    // Check for the Status Code
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
