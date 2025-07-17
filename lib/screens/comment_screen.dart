import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/comment.dart';
import '../widgets/comment_bubble.dart';

class CommentScreen extends StatefulWidget {
  final Post post;
  const CommentScreen({super.key, required this.post});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final _controller = TextEditingController();
  final List<Comment> _comments = [];

  void _addComment() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _comments.add(Comment(author: 'moi', text: _controller.text.trim()));
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Commentaires')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: _comments.map((c) => CommentBubble(comment: c)).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(controller: _controller, decoration: const InputDecoration(hintText: 'Ton message…')),
                ),
                IconButton(icon: const Icon(Icons.send), onPressed: _addComment),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
