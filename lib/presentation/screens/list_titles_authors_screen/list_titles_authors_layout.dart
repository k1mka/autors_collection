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
      body: Center(),
    );
  }
}
