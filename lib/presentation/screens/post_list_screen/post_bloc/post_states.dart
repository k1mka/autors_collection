import 'package:authors_collection/presentation/models/post_model.dart';

abstract class PostListState {}

class InitialState extends PostListState {}

class LoadingPost extends PostListState {}

class LoadedPost extends PostListState {
  final List<PostModel> postList;

  LoadedPost(this.postList);
}

class ErrorPost extends PostListState {
  final Object exception;

  ErrorPost(this.exception);
}
