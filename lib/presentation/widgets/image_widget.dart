import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  final String link;
  const ImageWidget({Key? key, required this.link}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.link,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
      // loadingBuilder: (_, widget, event) {
      //   if (event == null) return const SizedBox();
      //   final percent =
      //       event.cumulativeBytesLoaded / event.expectedTotalBytes! * 100;
      //
      //   print(percent / 100);
      //   if (percent < 100) {
      //     return Center(child: CircularProgressIndicator(value: percent / 100));
      //   }
      //   return Center(child: widget);
      // },
    );
  }
}
