import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String _urlAPI = '';

class BooksProvider extends ChangeNotifier {
  MoviesProvider() {
    print('API LEVANTADA');
    this.getOnDisplayBooks();
  }

  getOnDisplayBooks() async {
    print('getBooks');

    var url = Uri.https(_urlAPI, '/tbn2/books');

    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    print(response.body);
  }
}
