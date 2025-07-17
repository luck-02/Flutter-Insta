import 'package:flutter/material.dart';
import '../models/story.dart';

class StoryAvatar extends StatelessWidget {
  final Story story;
  const StoryAvatar({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    final border = story.viewed ? Colors.grey : Colors.deepOrange;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: border, width: 2)),
          child: CircleAvatar(radius: 28, backgroundImage: NetworkImage(story.author.avatarUrl)),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 60,
          child: Text(story.author.username, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
