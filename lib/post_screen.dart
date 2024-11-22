import 'package:flutter/material.dart';
import 'package:flutter_course_class_nine/repository/post_repo.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  void initState() {
    // PostRepo.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: PostRepo.getPosts(),
          builder: ((context, snapshot) {
            return ListView.builder(itemBuilder: ((context, index) {
              return ListTile(
                title: Text(snapshot.data![index].title),
                subtitle: Text(snapshot.data![index].body),
              );
            }));
          })),
    );
  }
}
