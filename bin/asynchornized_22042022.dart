import 'dart:convert';

import 'package:dio/dio.dart';

import 'demo1.dart';
import 'demo2.dart';
void main(List<String> arguments) {
  var option = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    baseUrl: 'https://khoapham.vn/'
  );
  var dio = Dio(option);

  dio.get('KhoaPhamTraining/json/tien/demo2.json')
  .then((response) => Demo2.fromJson(response.data))
  .then((value) => print(value.danhsach![0].khoahoc))
  .catchError((error) => print(error));

}

