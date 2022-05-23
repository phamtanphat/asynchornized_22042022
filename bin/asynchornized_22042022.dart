import 'package:dio/dio.dart';
void main(List<String> arguments) {
  var option = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    baseUrl: 'https://khoapham.vn/'
  );
  var dio = Dio(option);

  dio.get('KhoaPhamTraining/json/tien/demo1.json')
  .then((response) => print(response))
  .catchError((error) => print(error));

}

