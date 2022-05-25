import 'package:dio/dio.dart';
import 'apiService.dart';

void main(List<String> arguments) {
  var option = BaseOptions(
      connectTimeout: 30000,
      receiveTimeout: 30000,
      baseUrl: 'https://khoapham.vn/');
  var dio = Dio(option);

  var client = ApiService(dio);

  client
      .getDemo3()
      .then((value) => print(value.language?.en?.name))
      .catchError((error) => print(error));
}
