import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

String baseUrl = 'url';

class PostController {
  ValueNotifier<String> status = ValueNotifier('');
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse(baseUrl),
      );
      //Uri.https('example.com', 'whatsit/create'),
      var decodedResponse = jsonDecode(response.body);
      String statusRele = decodedResponse.map((e) => Post.fromJson(e));
      print(statusRele);

      print(decodedResponse);
    } finally {
      client.close();
    }
  }
}
