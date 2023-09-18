// To parse this JSON data, do
//
//     final status = statusFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Status statusFromJson(String str) => Status.fromJson(json.decode(str));

String statusToJson(Status data) => json.encode(data.toJson());

class Status {
    String avatar;
    String name;
    String updatedAt;
    String status;

    Status({
        required this.avatar,
        required this.name,
        required this.updatedAt,
        required this.status,
    });

    factory Status.fromJson(Map<String, dynamic> json) => Status(
        avatar: json["avatar"],
        name: json["name"],
        updatedAt: json["updatedAt"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "updatedAt": updatedAt,
        "status": status,
    };
}
