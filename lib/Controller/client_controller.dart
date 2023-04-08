import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClientController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();

  Future<void> createClient(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await http.post(
        Uri.parse("http://localhost/registration/sign.php"),
        body: jsonEncode({
          'name': name,
          'email': email,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'client created successfully');
        print(response.body);
      } else {
        Get.snackbar('Error', response.body);
        print('asdf ${response.body}');
      }
    } catch (e) {
      print(e);
      print(e);
      Get.snackbar('Error', e.toString());
    }
  }
}
