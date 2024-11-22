import 'dart:convert';

import '../model/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepo{

  static Future<List<PostModel>> getPosts()async{

    String url = "https://jsonplaceholder.typicode.com/posts";

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      print(response.body);

      final List<dynamic> data = jsonDecode(response.body);

      return data.map((json) => PostModel.fromJson(json)).toList();

    }else{
      print(response.statusCode);
    }



    return [];
  }
}