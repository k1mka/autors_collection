import 'package:authors_collection/presentation/models/post_model.dart';

abstract class DataService {
  Future<List<PostModel>> fetchPost();
}

class MockedDataService implements DataService {
  final mockedTitle = 'Title';
  final mockedAuthor = 'Name';
  final mockedIcon =
      'https://images.unsplash.com/photo-1664393633748-19ed89efdb4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjc4ODZ8MHwxfGFsbHw1fHx8fHx8Mnx8MTY2NDQzNzI4OQ&ixlib=rb-1.2.1&q=80&w=200';

  final mockedFull =
      'https://images.unsplash.com/photo-1664393633748-19ed89efdb4d?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzNjc4ODZ8MHwxfGFsbHw1fHx8fHx8Mnx8MTY2NDQzNzI4OQ&ixlib=rb-1.2.1&q=80';

  @override
  Future<List<PostModel>> fetchPost() async => [
        for (var i = 0; i < 10; i++)
          PostModel(
              title: mockedTitle,
              author: mockedAuthor,
              photoIcon: mockedIcon,
              photoFull: mockedFull)
      ];
}
