import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medium_blog_app/data/blogData.dart';
import 'package:medium_blog_app/model/blog.dart';

import 'package:medium_blog_app/model/blogList.dart';

class MediumAPI {
  static const String url =
      "https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@mhamzadev";

  List<Blog> getAllBlogs() {
    return dummyBlogs;
  }

}
