import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageWidget extends StatefulWidget {
  final String link;
  const ImageWidget({Key? key, required this.link}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(widget.link),
    );
  }
}
