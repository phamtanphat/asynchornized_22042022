import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: 'https://khoapham.vn/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tasks")
  Future<List<Task>> getTasks();
}