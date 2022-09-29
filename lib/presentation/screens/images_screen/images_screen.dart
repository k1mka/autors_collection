import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:authors_collection/presentation/screens/images_screen/images_layout.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key, required this.model}) : super(key: key);

  final PostModel model;

  @override
  Widget build(BuildContext context) {
    return ImageLayout(model: model);
  }
}
