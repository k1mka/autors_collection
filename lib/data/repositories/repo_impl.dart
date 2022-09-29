import 'package:authors_collection/data/repositories/repository.dart';
import 'package:authors_collection/data/services/mocked_data_service.dart';
import 'package:authors_collection/presentation/models/post_model.dart';

class RepositoryImpl implements Repository {
  final DataService dataService;

  RepositoryImpl(this.dataService);

  @override
  Future<List<PostModel>> fetchPost() => dataService.fetchPost();
}
