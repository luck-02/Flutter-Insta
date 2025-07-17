import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/story_provider.dart';
import 'story_avatar.dart';
import 'story_viewer.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StoryProvider>(
      builder: (c, prov, _) => SizedBox(
        height: 110,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: prov.stories.map((s) {
            return GestureDetector(
              onTap: () => showDialog(
                context: context,
                barrierColor: Colors.black87,
                barrierDismissible: true,
                builder: (_) => StoryViewer(story: s),
              ).then((_) => prov.markViewed(s)),
              child: StoryAvatar(story: s),
            );
          }).toList(),
        ),
      ),
    );
  }
}
