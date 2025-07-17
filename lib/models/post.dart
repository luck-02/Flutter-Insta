import 'user.dart';

class Post {
  final User author;
  final String imageUrl;
  final String caption;
  bool liked;
  Post({required this.author, required this.imageUrl, required this.caption, this.liked = false});
}
