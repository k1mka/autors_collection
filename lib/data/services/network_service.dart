import 'package:authors_collection/presentation/models/post_model.dart';

abstract class NetworkService {
  List<PostModel> fetchPost();
}
