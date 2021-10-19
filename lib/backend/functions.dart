import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tech_newz_app/components/searchBar.dart';
import 'package:tech_newz_app/utils/key.dart';

Future<List> fetchNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=' +
            Keys.key +
            '&q=' +
            SearchBar.searchController.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
