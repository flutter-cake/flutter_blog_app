import 'package:medium_blog_app/data/blogData.dart';
import 'package:medium_blog_app/model/blog.dart';

class BlogList {
  final List<Blog> blogs;

  const BlogList({required this.blogs});

  factory BlogList.fromJson(Map<String, dynamic> json) {
    // final List<dynamic> blogsList = json['items'] ?? [];
    // final List<Blog> allBlogs =
    // blogsList.map((blog) => Blog.fromJson(blog as Map<String, dynamic>)).toList();

    return BlogList(blogs: dummyBlogs);
  }
}
