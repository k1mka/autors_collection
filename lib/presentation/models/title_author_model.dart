class TitlesAuthorsModel {
  final String title;
  final String author;

  TitlesAuthorsModel({required this.author, required this.title});

  String get fullTitle => 'Title{title: $title, author: $author}';
}
