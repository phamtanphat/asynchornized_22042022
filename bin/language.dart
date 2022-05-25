import 'package:json_annotation/json_annotation.dart';
import 'en.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
  En? en;
  En? vn;

  Language({this.en, this.vn});

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}