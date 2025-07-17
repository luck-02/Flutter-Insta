import 'package:flutter/material.dart';
import '../models/story.dart';

class StoryViewer extends StatelessWidget {
  final Story story;
  const StoryViewer({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pop(context),
      child: Image.asset(story.imageUrl, fit: BoxFit.cover),
    );
  }
}
