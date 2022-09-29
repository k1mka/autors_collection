import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_bloc.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_events.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_states.dart';
import 'package:authors_collection/presentation/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostListLayout extends StatefulWidget {
  const PostListLayout({Key? key}) : super(key: key);

  @override
  State<PostListLayout> createState() => _PostListLayoutState();
}

class _PostListLayoutState extends State<PostListLayout> {
  @override
  void initState() {
    super.initState();
    context.read<PostListBloc>().add(LoadingPostEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Titles and Authors'),
      ),
      body: Center(
        child: BlocBuilder<PostListBloc, PostListState>(
          builder: (context, state) {
            if (state is InitialState) {
              return const Center(child: Text('expectation'));
            } else if (state is ErrorPost) {
              return const Text('error'); // TODO: change to screen error
            } else if (state is LoadingPost) {
              return const CircularProgressIndicator();
            } else if (state is LoadedPost) {
              return ListView.separated(
                itemBuilder: (_, __) => const Divider(thickness: 4),
                itemCount: state.postList.length,
                separatorBuilder: (_, index) => PostWidget(
                  model: state.postList[index],
                ),
              );
            } else {
              throw Exception('unprocessed state $state in DogListLayout');
            }
          },
        ),
      ),
    );
  }
}
