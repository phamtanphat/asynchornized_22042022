import 'package:json_annotation/json_annotation.dart';
part 'en.g.dart';

@JsonSerializable()
class En {
  String? name;
  String? address;
  String? course1;
  String? course2;
  String? course3;

  En({this.name, this.address, this.course1, this.course2, this.course3});

  factory En.fromJson(Map<String, dynamic> json) => _$EnFromJson(json);
  Map<String, dynamic> toJson() => _$EnToJson(this);
}