import 'en.dart';

class Language {
  En? en;
  En? vn;

  Language({this.en, this.vn});

  Language.fromJson(Map<String, dynamic> json) {
    en = json['en'] != null ? En.fromJson(json['en']) : null;
    vn = json['vn'] != null ? En.fromJson(json['vn']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (en != null) {
      data['en'] = en!.toJson();
    }
    if (vn != null) {
      data['vn'] = vn!.toJson();
    }
    return data;
  }
}