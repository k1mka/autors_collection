import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:authors_collection/presentation/screens/images_screen/images_screen.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key, required this.model}) : super(key: key);

  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ImageScreen(model: model),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    model.photoIcon,
                    width: 124,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _PostInfo(
                        author: model.author,
                        title: model.title,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PostInfo extends StatelessWidget {
  final String? title;
  final String author;

  late final authorWidget = Text(
    'by $author',
    style: const TextStyle(fontSize: 20),
  );

  _PostInfo({
    Key? key,
    this.title,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title == null) return Center(child: authorWidget);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
        Align(alignment: Alignment.bottomCenter, child: authorWidget),
      ],
    );
  }
}
