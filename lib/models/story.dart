import 'user.dart';

class Story {
  final String id;
  final User author;
  final String imageUrl;
  bool viewed;
  Story({required this.id, required this.author, required this.imageUrl, this.viewed = false});
}
