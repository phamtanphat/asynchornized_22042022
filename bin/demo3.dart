import 'language.dart';
import 'package:json_annotation/json_annotation.dart';
part 'demo3.g.dart';

@JsonSerializable()
class Demo3 {
  Language? language;

  Demo3({this.language});

  factory Demo3.fromJson(Map<String, dynamic> json) => _$Demo3FromJson(json);
  Map<String, dynamic> toJson() => _$Demo3ToJson(this);
}