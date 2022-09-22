// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
part 'mun_model.g.dart';

@collection
class MunModel {
  Id id = Isar.autoIncrement;
  String munCode;
  String munName;
  String munUF;
  MunModel({
    required this.munCode,
    required this.munName,
    required this.munUF,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'munCode': munCode,
      'munName': munName,
      'munUF': munUF,
    };
  }

  factory MunModel.fromMap(Map<String, dynamic> map) {
    return MunModel(
      munCode: map['munCode'] as String,
      munName: map['munName'] as String,
      munUF: map['munUF'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MunModel.fromJson(String source) =>
      MunModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MunModel(id: $id, munCode: $munCode, munName: $munName, munUF: $munUF)';
  }
}
