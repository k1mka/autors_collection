import 'package:authors_collection/presentation/models/post_model.dart';

abstract class Repository {
  Future<List<PostModel>> fetchPost();
}
