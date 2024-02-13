import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Examplegetx extends GetxController {
  // ignore: non_constant_identifier_names
  final email = TextEditingController();
  final password = TextEditingController();
  RxBool notification = true.obs;
  RxDouble opacity = .9.obs;
  RxBool nootification = false.obs;
  RxBool off= false.obs;

  RxList<String> fruitlist = ['open', 'block', 'Row', 'Machine', 'jamol'].obs;
  RxList fruitcolor = [].obs;

  notifications(bool value) {
    notification.value = value;
  }

  opacityColor(double value) {
    opacity.value = value;
  }

  nootifications(bool value) {
    nootification.value = value;
  }

  addfruite(String value) {
    fruitcolor.add(value);
  }

  removefruite(String value) {
    fruitcolor.remove(value);
  }

  var url = "https://reqres.in/";
  Future<void> loginuser() async {
    try {
      var response = await http
          .post(Uri.parse(url), body: {"email": email, "password": password});

      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);

      if (response.statusCode == 200) {
        Get.snackbar("Message", "Login Succsfully");
      }
    } catch (e) {
      Get.snackbar("message", e.toString());
    }
  }

  // Future<void> postuser() async {
  //   try {
  //     var response =
  //         http.post(Uri.parse(url), body: {"email": '', "password": ''});

  //         var data = jsonDecode(response.body);
  //         if(response.statusCode==200){

  //           Get.snackbar("ABC", "ABC Congratualations");

  //         }
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
