// To parse this JSON data, do
//
//     final community = communityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Community communityFromJson(String str) => Community.fromJson(json.decode(str));

String communityToJson(Community data) => json.encode(data.toJson());

class Community {
    String avathar;
    String name;
    String updatedAt;
    String message;

    Community({
        required this.avathar,
        required this.name,
        required this.updatedAt,
        required this.message,
    });

    factory Community.fromJson(Map<String, dynamic> json) => Community(
        avathar: json["avathar"],
        name: json["name"],
        updatedAt: json["updatedAt"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "avathar": avathar,
        "name": name,
        "updatedAt": updatedAt,
        "message": message,
    };
}
