import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'demo3.dart';

part 'apiService.g.dart';

@RestApi(baseUrl: 'https://khoapham.vn/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('KhoaPhamTraining/json/tien/demo3.json')
  Future<Demo3> getDemo3();
}