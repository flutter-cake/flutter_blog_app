import 'package:flutter/material.dart';
import 'package:medium_blog_app/controller/blogController.dart';
import 'package:medium_blog_app/data/blogData.dart';
import 'package:medium_blog_app/model/blog.dart';
import 'package:medium_blog_app/widgets/blogCard.dart';
import 'package:medium_blog_app/model/blogList.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogFeed extends StatefulWidget {
  const BlogFeed({super.key});

  @override
  State<BlogFeed> createState() => _BlogFeedState();
}

class _BlogFeedState extends State<BlogFeed> {

  late List<Blog> blogs;

  void getAllBlogs(){
    setState(() {
      blogs = dummyBlogs;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllBlogs();
  }

  void launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://img.icons8.com/ios-filled/250/000000/medium-monogram--v1.png",
                            height: 45.0,
                          ),
                          const SizedBox(width: 8.0),
                          const Text(
                            "Medium Blog Feed",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    for (final blog in blogs) BlogCard(blog: blog),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        color: Colors.black,
                        onPressed: () =>
                            launchURL('https://mhamzadev.medium.com/'),
                        child: const Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )

        )

      );
  }
}
