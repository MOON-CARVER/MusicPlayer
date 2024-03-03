import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class PostsModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const PostsModel({this.userId, this.id, this.title, this.body});

  @override
  String toString() {
    return 'PostsModel(userId: $userId, id: $id, title: $title, body: $body)';
  }

  factory PostsModel.fromMap(Map<String, dynamic> data) => PostsModel(
        userId: data['userId'] as int?,
        id: data['id'] as int?,
        title: data['title'] as String?,
        body: data['body'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostsModel].
  factory PostsModel.fromJson(String data) {
    return PostsModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PostsModel] to a JSON string.
  String toJson() => json.encode(toMap());

  PostsModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostsModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
