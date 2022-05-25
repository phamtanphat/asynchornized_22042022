import 'language.dart';

class Demo3 {
  Language? language;

  Demo3({this.language});

  Demo3.fromJson(Map<String, dynamic> json) {
    language = json['language'] != null
        ? Language.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (language != null) {
      data['language'] = this.language!.toJson();
    }
    return data;
  }
}