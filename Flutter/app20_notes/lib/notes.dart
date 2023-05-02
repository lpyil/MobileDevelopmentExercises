// To parse this JSON data, do
//
//     final note = noteFromJson(jsonString);

import 'dart:convert';

class Note {
    int id;
    String content;
    String createdTime;

    Note({
        required this.id,
        required this.content,
        required this.createdTime,
    });

    factory Note.fromRawJson(String str) => Note.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Note.fromJson(Map<String, dynamic> json) => Note(
        id: json["id"],
        content: json["content"],
        createdTime: json["createdTime"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "createdTime": createdTime,
    };
}
