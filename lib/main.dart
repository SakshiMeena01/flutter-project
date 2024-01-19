
import 'package:flutter/material.dart';
import 'package:blog_app/second_page.dart';

void main() {
  runApp(MyBlog_App());
}

class MyBlog_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Blog App',
      home: Blog_Page(),
    );
  }
}

class Blog_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Classes'),
      ),
      body: ListView(
        children: [
          BlogPost(
            imageUrl: 'https://2018media.idtech.com/images/blog/featured/python-coding-games-blog-header.png',
            title: 'Python',
            content: 'Apply Python skills to practical scenarios',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    title: 'Python',
                    content: 'Understand functions and basic syntax',
                    imageUrl: 'https://2018media.idtech.com/images/blog/featured/python-coding-games-blog-header.png',
                  ),
                ),
              );
            },
          ),
          BlogPost(
            imageUrl: 'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1309974/regular_1708x683_cover-0828_AfterAllTheseYearstheWorldisStillPoweredbyCProgramming_Razvan_Newsletter-2b9ea38294bb08c5aea1f0c1cb06732f.png',
            title: 'C++',
            content: 'Understand variables and data types',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    title: 'C++',
                    content: 'Understand variables and data types',
                    imageUrl: 'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1309974/regular_1708x683_cover-0828_AfterAllTheseYearstheWorldisStillPoweredbyCProgramming_Razvan_Newsletter-2b9ea38294bb08c5aea1f0c1cb06732f.png',
                  ),
                ),
              );
            },
          ),
          BlogPost(
            imageUrl: 'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1096554/retina_1708x683_cover-0408-FlutterMessangerDemo-Luke_Newsletter-30d5a65064b44f0ef56a801d4811964a.png',
            title: 'Flutter',
            content: 'Start with the fundamentals of Flutter, covering widgets, the building blocks of Flutter applications',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    title: 'Flutter',
                    content: 'Explore basic UI components and their properties',
                    imageUrl: 'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1096554/retina_1708x683_cover-0408-FlutterMessangerDemo-Luke_Newsletter-30d5a65064b44f0ef56a801d4811964a.png',
                  ),
                ),
              );
            },
          ),
          BlogPost(
            imageUrl: 'https://www.developer.com/wp-content/uploads/2022/12/java-programming-tutorials-tips.png',
            title: 'Java',
            content: 'Master the basics of Java programming',
            onTap: () {
              // Navigate to the second page with blog post details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    title: 'Java',
                    content: 'Explore control structures like loops and conditionals',
                    imageUrl: 'https://www.developer.com/wp-content/uploads/2022/12/java-programming-tutorials-tips.png',
                  ),
                ),
              );
            },
          ),
          // Add more BlogPost widgets as needed
        ],
      ),
    );
  }
}

class BlogPost extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;
  final VoidCallback onTap;

  BlogPost({required this.imageUrl, required this.title, required this.content, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imageUrl,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 6.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              content,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
