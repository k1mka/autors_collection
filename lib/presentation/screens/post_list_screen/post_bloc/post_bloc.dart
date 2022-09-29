import 'package:authors_collection/data/repositories/repository.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_events.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogListBloc extends Bloc<LoadingPostEvent, PostListState> {
  Repository repo;
  DogListBloc(this.repo) : super(InitialState()) {
    on<LoadingPostEvent>((event, emit) async {
      emit(LoadingPost());
      try {
        final breeds = await repo.fetchPost();
        emit(LoadedPost(breeds));
      } catch (e) {
        emit(ErrorPost(e));
      }
    });
  }
}
