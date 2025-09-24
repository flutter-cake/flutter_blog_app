import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:medium_blog_app/model/blog.dart';

class BlogDetails extends StatelessWidget {
  final Blog blog;

  const BlogDetails({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(blog.titleB, style: TextStyle(
          fontSize: 17
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.amberAccent,
                  width: double.infinity,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(blog.thumbnailB, fit: BoxFit.cover,),
                  )
              ),
              const SizedBox(height: 15,),
              Text(blog.titleB, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
              const SizedBox(height: 10,),
              Text("Author: ${blog.authorB},  Published at: ${blog.dateB}"),
              const SizedBox(height: 10,),
              Text(blog.contentB, textAlign: TextAlign.justify, style: TextStyle(
                height: 2
              ),)
            ],
          )
        ),
      ),
    );
  }
}
