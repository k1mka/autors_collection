class PostModel {
  final String? title;
  final String author;
  final String photoIcon;
  final String photoFull;

  PostModel({
    required this.author,
    required this.photoIcon,
    required this.photoFull,
    this.title,
  });

  @override
  String toString() =>
      '{title: $title, author: $author, photoIcon: $photoIcon, photoFull: $photoFull}';
}
