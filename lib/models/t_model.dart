// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 't_model.g.dart';

@collection
class TModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? t;
  TModel({
    required this.munCode,
    required this.year,
    this.t,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (t != null) {
      result.addAll({'t': t});
    }

    return result;
  }

  factory TModel.fromMap(Map<String, dynamic> map) {
    return TModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      t: map['t']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory TModel.fromJson(String source) => TModel.fromMap(json.decode(source));

  TModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? t,
  }) {
    return TModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      t: t ?? this.t,
    );
  }

  @override
  String toString() {
    return 'TModel(id: $id, munCode: $munCode, year: $year, t: $t)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.t == t;
  }

  @override
  int get hashCode {
    return id.hashCode ^ munCode.hashCode ^ year.hashCode ^ t.hashCode;
  }
}
