import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rxdart/subjects.dart';
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
  
  // var stream = Stream.periodic(Duration(seconds: 1), (index){
  //   return '$index';
  // });
  //
  // var subscription = stream.listen((event) {
  //     print(event);
  // });
  //
  // Future.delayed(Duration(seconds: 3), (){
  //   subscription.pause();
  // });
  //
  // Future.delayed(Duration(seconds: 5), (){
  //   subscription.resume();
  // });


  var behaviorSubject = BehaviorSubject<String>();

  // Lần 1
  behaviorSubject.listen((value) {
    print('Listen 1 $value');
  });

  behaviorSubject.add('1');
  behaviorSubject.add('2');
  behaviorSubject.add('3');
  behaviorSubject.add('4');

  // Lần 2
  // Lần 1
  behaviorSubject.listen((value) {
    print('Listen 2 $value');
  });

  behaviorSubject.add('5');
  behaviorSubject.add('6');


}
