import 'dart:collection';

class Demo1 {
  String? monhoc;
  String? noihoc;
  String? website;
  String? fanpage;
  String? logo;

  Demo1({
    this.monhoc,
    this.noihoc,
    this.website,
    this.fanpage,
    this.logo,
  });

  Demo1.fromJson(Map<String, dynamic> json) :
    monhoc = json['monhoc'],
    noihoc = json['noihoc'],
    website = json['website'],
    fanpage = json['fanpage'],
    logo = json['logo'];
}