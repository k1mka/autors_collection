import 'package:authors_collection/data/repositories/repository.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_events.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostListBloc extends Bloc<PostEvent, PostListState> {
  Repository repo;
  PostListBloc(this.repo) : super(InitialState()) {
    on<LoadingPostEvent>((event, emit) async {
      emit(LoadingPost());
      // try {
      emit(LoadedPost(await repo.fetchPost()));
      // } catch (e) {
      //
      //   emit(ErrorPost(e));
      // }
    });
  }
}
