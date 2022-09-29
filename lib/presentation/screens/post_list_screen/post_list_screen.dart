import 'package:authors_collection/data/repositories/repository.dart';
import 'package:authors_collection/get_it.dart';
import 'package:authors_collection/presentation/screens/post_list_screen/post_bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post_list_layout.dart';

class ListTitlesAuthorsScreen extends StatelessWidget {
  const ListTitlesAuthorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostListBloc>(
      create: (_) => PostListBloc(getIt<Repository>()),
      child: const PostListLayout(),
    );
  }
}
