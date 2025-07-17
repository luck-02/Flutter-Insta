import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/user.dart';

class PostProvider extends ChangeNotifier {
  final _posts = [
    Post(
      author: const User(username: 'luc', avatarUrl: 'https://i.pravatar.cc/100?img=1'),
      imageUrl: 'assets/images/posts/post1.jpg',
      caption: 'Première photo #flutter',
    ),
    Post(
      author: const User(username: 'luc', avatarUrl: 'https://i.pravatar.cc/100?img=1'),
      imageUrl: 'assets/images/posts/post2.jpg',
      caption: 'Deuxième photo #flutter',
    ),
  ];

  List<Post> get posts => _posts;
  void toggleLike(Post p) {
    p.liked = !p.liked;
    notifyListeners();
  }
}
