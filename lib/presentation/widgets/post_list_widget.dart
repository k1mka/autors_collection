import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:authors_collection/presentation/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({
    Key? key,
    required this.models,
  }) : super(key: key);

  final List<PostModel> models;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: models.length,
      itemBuilder: (_, i) => PostWidget(
        model: models[i],
      ),
    );
  }
}
