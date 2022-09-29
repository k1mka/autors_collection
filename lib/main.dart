import 'package:authors_collection/authors_collection_app.dart';
import 'package:flutter/material.dart';

import 'get_it.dart';

void main() {
  setupServiceLocator();
  runApp(const AuthorsCollectionsApp());
}
