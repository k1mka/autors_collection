import 'package:flutter/material.dart';
import 'presentation/screens/post_list_screen/post_list_screen.dart';

class AuthorsCollectionsApp extends StatelessWidget {
  const AuthorsCollectionsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListTitlesAuthorsScreen(),
    );
  }
}
