import 'package:flutter/material.dart';
import '../models/comment.dart';

class CommentBubble extends StatelessWidget {
  final Comment comment;
  const CommentBubble({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text(comment.author, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(comment.text),
    );
  }
}
