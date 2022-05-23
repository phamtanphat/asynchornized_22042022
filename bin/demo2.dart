class Demo2 {
  List<Danhsach>? danhsach;

  Demo2({this.danhsach});

  Demo2.fromJson(Map<String, dynamic> json) {
    if (json['danhsach'] != null) {
      danhsach = <Danhsach>[];
      json['danhsach'].forEach((v) {
        danhsach!.add(new Danhsach.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.danhsach != null) {
      data['danhsach'] = this.danhsach!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Danhsach {
  String? khoahoc;

  Danhsach({this.khoahoc});

  Danhsach.fromJson(Map<String, dynamic> json) {
    khoahoc = json['khoahoc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['khoahoc'] = this.khoahoc;
    return data;
  }
}