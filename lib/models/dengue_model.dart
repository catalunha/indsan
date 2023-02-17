// ignore_for_file: public_member_api_docs, sort_construdengueors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'dengue_model.g.dart';

@collection
class DengueModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? dengue;
  DengueModel({
    required this.munCode,
    required this.year,
    this.dengue,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (dengue != null) {
      result.addAll({'dengue': dengue});
    }

    return result;
  }

  factory DengueModel.fromMap(Map<String, dynamic> map) {
    return DengueModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      dengue: map['dengue']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DengueModel.fromJson(String source) =>
      DengueModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DengueModel(id: $id, munCode: $munCode, year: $year, dengue: $dengue)';
  }

  DengueModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? dengue,
  }) {
    return DengueModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      dengue: dengue ?? this.dengue,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DengueModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.dengue == dengue;
  }

  @override
  int get hashCode {
    return id.hashCode ^ munCode.hashCode ^ year.hashCode ^ dengue.hashCode;
  }
}
