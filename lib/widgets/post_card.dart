import 'package:flutter/material.dart';
import '../models/post.dart';
import 'user_profile.dart';
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';

class PostCard extends StatefulWidget {
  final Post post;
  const PostCard({super.key, required this.post});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  void toggleLike() => setState(() => widget.post.liked = !widget.post.liked);

  @override
  Widget build(BuildContext context) {
    return Column(                        // empile verticalement :contentReference[oaicite:2]{index=2}
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: UserProfile(user: widget.post.author),
        ),
        Image.network(widget.post.imageUrl),
        Row(
          children: [
            IconButton(
              icon: Icon(
                widget.post.liked ? Icons.favorite : Icons.favorite_border,
                color: widget.post.liked ? Colors.red : Colors.black,
              ),
              onPressed: () {
                context.read<PostProvider>().toggleLike(widget.post);
              },
            ),
            Text(widget.post.caption),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
