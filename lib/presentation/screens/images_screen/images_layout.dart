import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:authors_collection/presentation/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({Key? key, required this.model}) : super(key: key);

  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ImageWidget(
          link: model.photoFull,
        ),
      ),
    );
  }
}
