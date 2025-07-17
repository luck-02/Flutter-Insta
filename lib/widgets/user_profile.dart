import 'package:flutter/material.dart';
import '../models/user.dart';
import '../screens/profile_screen.dart';

class UserProfile extends StatelessWidget {
  final User user;
  const UserProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ProfileScreen(user: user)),
        );
      },
      child: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(user.avatarUrl),
      ),
    );
  }
}
