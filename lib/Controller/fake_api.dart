import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../Model/fake_model.dart';


class FakeApiCalling {
  Future<List<AllModel>> getdetails() async {
    try {
      final Uri uri = Uri.parse(
          'https://reqres.in/api/users?page=2'); // Replace with your actual API URL
      final response = await http.get(
        uri,
        headers: {
          "Token":"73d4fd9ba063d8579fb716c24c90501f"
        }
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['data'];
        log("Body Response ------$data");
        return data.map((item) => AllModel.fromjson(item)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}