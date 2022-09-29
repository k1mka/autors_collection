class PostModel {
  final String title;
  final String author;
  final String photoIcon;
  final String photoFull;

  PostModel({
    required this.title,
    required this.author,
    required this.photoIcon,
    required this.photoFull,
  });

  @override
  String toString() =>
      'PostModel{title: $title, author: $author, photoIcon: $photoIcon, photoFull: $photoFull}';
}
