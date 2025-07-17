import 'package:flutter/material.dart';
import '../models/story.dart';
import '../models/user.dart';

class StoryProvider extends ChangeNotifier {
  final _stories = [
    Story(
      id: 's1',
      author: const User(username: 'luc', avatarUrl: 'https://i.pravatar.cc/100?img=1'),
      imageUrl: 'assets/images/stories/story1.jpg',
    ),
    Story(
      id: 's2',
      author: const User(username: 'ana', avatarUrl: 'https://i.pravatar.cc/100?img=2'),
      imageUrl: 'assets/images/stories/story2.jpg',
    ),
  ];

  List<Story> get stories => _stories;
  void markViewed(Story s) {
    s.viewed = true;
    notifyListeners();
  }
}
