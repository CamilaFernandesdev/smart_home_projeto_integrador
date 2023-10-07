import 'dart:convert';
import 'dart:developer';
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
      log(statusRele);

      log(decodedResponse);
    } finally {
      client.close();
    }
  }
}
