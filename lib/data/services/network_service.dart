import 'dart:convert';
import 'dart:developer';

import 'package:authors_collection/data/services/mocked_data_service.dart';
import 'package:authors_collection/presentation/models/post_model.dart';
import 'package:http/http.dart';

class NetworkServiceImpl implements DataService {
  static const apiUrl = 'https://api.unsplash.com';

  static const photosEndpoint = '/photos/';

  static const photosUrl = '$apiUrl$photosEndpoint';
  static const authorizationKey = 'Authorization';

  static const tokenKey = 'mjCAUkBaQmkuLTbho9iLzVhDEhiP0JLIIOmu-XsIxqs';

  static const clientID = 'Client-ID';

  static const description = 'description';

  static const userKey = 'user';

  static const username = 'username';

  static const urlThumb = 'thumb';

  static const urlsKeys = 'urls';

  static const urlFull = 'thumb';

  static const tokenValue = '$clientID $tokenKey';

  static const authHeadersMap = {authorizationKey: tokenValue};
  @override
  Future<List<PostModel>> fetchPost() async {
    final url = Uri.parse(photosUrl);
    final response = await get(url, headers: authHeadersMap);

    List responseList = json.decode(response.body);

    final result = <PostModel>[];
    for (var map in responseList) {
      final title = map[description];
      final author = map[userKey][username];
      final iconPhoto = map[urlsKeys][urlFull];
      final fullPhoto = map[urlsKeys][urlFull];

      result.add(
        PostModel(
            title: title,
            author: author,
            photoIcon: iconPhoto,
            photoFull: fullPhoto),
      );
    }

    return result;
  }
}
