// To parse this JSON data, do
//
//     final call = callFromJson(jsonString);

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

Call callFromJson(String str) => Call.fromJson(json.decode(str));

String callToJson(Call data) => json.encode(data.toJson());

class Call {
    String avathar;
    String name;
    String status;
    String updatedAt;
    Icon type;

    Call({
        required this.avathar,
        required this.name,
        required this.status,
        required this.updatedAt,
        required this.type,
    });

    factory Call.fromJson(Map<String, dynamic> json) => Call(
        avathar: json["avathar"],
        name: json["name"],
        status: json["status"],
        updatedAt: json["updatedAt"],
        type: Icon(Icons.call),
    );

    Map<String, dynamic> toJson() => {
        "avathar": avathar,
        "name": name,
        "status": status,
        "updatedAt": updatedAt,
        "type": type.toString(),
    };
}
