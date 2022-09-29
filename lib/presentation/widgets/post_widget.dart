import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key, required this.model}) : super(key: key);

  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Card(
          child: Row(
            children: [
              Image.network(
                model.photoIcon,
                width: 124,
                height: 120,
              ),
              Text(
                model.title,
                style: const TextStyle(fontSize: 20),
              ),
              Text(model.author, style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
