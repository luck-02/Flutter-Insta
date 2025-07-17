import 'package:flutter/material.dart';
import '../widgets/story_bar.dart';
import '../widgets/post_card.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: StoryBar()),   // stories en haut
          Consumer<PostProvider>(
            builder: (context, postProv, _) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) => PostCard(post: postProv.posts[i]),
                  childCount: postProv.posts.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
