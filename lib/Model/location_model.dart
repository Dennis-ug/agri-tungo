
class LocationModel {
  int? statusCode;
  bool? success;
  Data? data;

  LocationModel({this.statusCode, this.success, this.data});

  LocationModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? time;
  String? city;
  double? temp;
  String? textNote;
  String? icon;

  Data({this.time, this.city, this.temp, this.textNote, this.icon});

  Data.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    city = json['city'];
    temp = json['temp'];
    textNote = json['text_note'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['city'] = this.city;
    data['temp'] = this.temp;
    data['text_note'] = this.textNote;
    data['icon'] = this.icon;
    return data;
  }
}