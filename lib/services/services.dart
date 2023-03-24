// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:http/http.dart' as http;

String baseUrl = 'https://majidovdiyorbek.pythonanywhere.com/api';

Future<List> getCatalog() async {
  // print('object');
  final response = await http.get(
    Uri.parse('$baseUrl/getcatolog/'),
  );
  // print(response.statusCode);
  // print(response.body);
  List data = jsonDecode(response.body);
  // print(data.runtimeType);
  // print('object');

  return data;
}

Future<List> getSubCatalog(int id) async {
  // print('object');
  final response = await http.get(
    Uri.parse('$baseUrl/get_subproduct/$id'),
  );
  // print(response.statusCode);
  // print(response.body);
  List data = jsonDecode(response.body);
  // print(data.runtimeType);
  print(data);

  return data;
}
