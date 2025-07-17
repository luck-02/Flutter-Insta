import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.username)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, backgroundImage: NetworkImage(user.avatarUrl)),
            const SizedBox(height: 16),
            Text(user.username, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Hello je suis sympa…'),
          ],
        ),
      ),
    );
  }
}
