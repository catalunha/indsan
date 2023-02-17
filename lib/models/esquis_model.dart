// ignore_for_file: public_member_api_docs, sort_construesquisors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'esquis_model.g.dart';

@collection
class EsquisModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? esquis;
  EsquisModel({
    required this.munCode,
    required this.year,
    this.esquis,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (esquis != null) {
      result.addAll({'esquis': esquis});
    }

    return result;
  }

  factory EsquisModel.fromMap(Map<String, dynamic> map) {
    return EsquisModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      esquis: map['esquis']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory EsquisModel.fromJson(String source) =>
      EsquisModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EsquisModel(id: $id, munCode: $munCode, year: $year, esquis: $esquis)';
  }

  EsquisModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? esquis,
  }) {
    return EsquisModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      esquis: esquis ?? this.esquis,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EsquisModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.esquis == esquis;
  }

  @override
  int get hashCode {
    return id.hashCode ^ munCode.hashCode ^ year.hashCode ^ esquis.hashCode;
  }
}
