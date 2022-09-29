import 'package:authors_collection/data/services/mocked_data_service.dart';
import 'package:authors_collection/presentation/widgets/post_list_widget.dart';
import 'package:flutter/material.dart';

class ListTitlesAuthorsLayout extends StatefulWidget {
  const ListTitlesAuthorsLayout({Key? key}) : super(key: key);

  @override
  State<ListTitlesAuthorsLayout> createState() =>
      _ListTitlesAuthorsLayoutState();
}

class _ListTitlesAuthorsLayoutState extends State<ListTitlesAuthorsLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Titles and Authors'),
      ),
      body: PostListWidget(
        models: MockedDataService().fetchPost(),
      ),
    );
  }
}
