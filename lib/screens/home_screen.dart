import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/post_card.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // données de démonstration
  final user = const User(
    username: 'luc',
    avatarUrl: 'https://i.pravatar.cc/100?img=1',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Insta')),
      body: Consumer<PostProvider>(
        builder: (context, postProv, _) {
          return SingleChildScrollView(
            child: Column(
              children: postProv.posts
                  .map((post) => PostCard(post: post))
                  .toList(),
            ),
          );
        },
      ),
    );
  }

}
