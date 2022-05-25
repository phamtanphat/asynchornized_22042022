class En {
  String? name;
  String? address;
  String? course1;
  String? course2;
  String? course3;

  En({this.name, this.address, this.course1, this.course2, this.course3});

  En.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    course1 = json['course1'];
    course2 = json['course2'];
    course3 = json['course3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['course1'] = this.course1;
    data['course2'] = this.course2;
    data['course3'] = this.course3;
    return data;
  }
}