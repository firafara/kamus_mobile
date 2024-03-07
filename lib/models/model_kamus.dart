// To parse this JSON data, do
//
//     final modelKamus = modelKamusFromJson(jsonString);

import 'dart:convert';

ModelKamus modelKamusFromJson(String str) => ModelKamus.fromJson(json.decode(str));

String modelKamusToJson(ModelKamus data) => json.encode(data.toJson());

class ModelKamus {
  // bool isSuccess;
  String message;
  List<Datum> data;

  ModelKamus({
    // required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelKamus.fromJson(Map<String, dynamic> json) => ModelKamus(
    // isSuccess: json["is_success"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    // "is_success": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String istilah;
  String arti;
  String penggunaan;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.istilah,
    required this.arti,
    required this.penggunaan,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    istilah: json["istilah"],
    arti: json["arti"],
    penggunaan: json["penggunaan"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "istilah": istilah,
    "arti": arti,
    "penggunaan": penggunaan,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
