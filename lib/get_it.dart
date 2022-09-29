import 'package:authors_collection/data/services/mocked_data_service.dart';
import 'package:authors_collection/data/services/network_service.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/repo_impl.dart';
import 'data/repositories/repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  final dataService = NetworkServiceImpl();
  getIt.registerSingleton<DataService>(dataService);
  getIt.registerSingleton<Repository>(
    RepositoryImpl(dataService),
  );
}
