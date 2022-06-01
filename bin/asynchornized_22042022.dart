import 'dart:async';

import 'package:dio/dio.dart';
import 'apiService.dart';

void main(List<String> arguments) {
  // var option = BaseOptions(
  //     connectTimeout: 30000,
  //     receiveTimeout: 30000,
  //     baseUrl: 'https://khoapham.vn/');
  // var dio = Dio(option);
  //
  // var client = ApiService(dio);
  //
  // client
  //     .getDemo3()
  //     .then((value) => print(value.language?.en?.name))
  //     .catchError((error) => print(error));

  // Future
  // var future = Future.value(5);
  // var strings = Stream.fromFuture(future);
  //
  // strings.listen((event) {
  //   print(event);
  // });

  // iterable
  // var iterable = Iterable.generate(10,(index) => 'i + $index');
  //
  // var stream = Stream.fromIterable(iterable);
  //
  // stream.listen((event) {
  //   print(event);
  // });

  // periodic
  // var stream = Stream.periodic(Duration(seconds: 1), (index) => index);
  // stream.take(20).listen((event) {
  //   print(event);
  // });
  
  var stringController = StreamController<String>();
  
  // Cap nhat du lieu
  stringController.sink.add('hello');

  stringController.stream.listen((event) {
    print(event);
  });

  Future.delayed(Duration(seconds: 2), () {
    stringController.sink.add('Updated');
  });
}
