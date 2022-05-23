import 'dart:convert';

import 'package:dio/dio.dart';

import 'demo1.dart';
void main(List<String> arguments) {
  var option = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    baseUrl: 'https://khoapham.vn/'
  );
  var dio = Dio(option);

  dio.get('KhoaPhamTraining/json/tien/demo1.json')
  .then((response) => Demo1.fromJson(response.data))
  .then((value) => print(value.monhoc))
  .catchError((error) => print(error));

}

