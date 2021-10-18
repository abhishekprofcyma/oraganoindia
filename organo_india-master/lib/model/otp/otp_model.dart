import 'package:meta/meta.dart';
import 'dart:convert';

OtpModel registerModelFromJson(String str) =>
    OtpModel.fromJson(json.decode(str));

String registerModelToJson(OtpModel data) => json.encode(data.toJson());

class OtpModel {
  OtpModel({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  String data;
  String message;

  factory OtpModel.fromJson(Map<String, dynamic> json) => OtpModel(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : json["data"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data,
        "message": message == null ? null : message,
      };
}
