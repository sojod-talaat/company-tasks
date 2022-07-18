import 'package:flutter/foundation.dart';

import '../../models/Post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataALL {
  static Future<List<Post>> getAllPost() async {
    String url = 'https://jsonplaceholder.typicode.com/todos/';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return compute(parsePostList, response.body);
      } else {
        throw Exception('Failed to load Userss');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Post> parsePostList(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Post>((json) => Post.fromJson(json)).toList();
  }
}
