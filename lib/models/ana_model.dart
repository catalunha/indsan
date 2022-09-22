// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
part 'ana_model.g.dart';

@collection
class ANAModel {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  String munCode;
  int? font;
  // font=0 Subterrânea
  // font=1 Superficial
  // font=2 Integrado
  ANAModel({
    required this.munCode,
    this.font,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'munCode': munCode,
      'font': font,
    };
  }

  factory ANAModel.fromMap(Map<String, dynamic> map) {
    return ANAModel(
      munCode: map['munCode'] as String,
      font: map['font'] != null ? map['font'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ANAModel.fromJson(String source) =>
      ANAModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
