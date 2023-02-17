// ignore_for_file: public_member_api_docs, sort_construleptoors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'lepto_model.g.dart';

@collection
class LeptoModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? lepto;
  LeptoModel({
    required this.munCode,
    required this.year,
    this.lepto,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (lepto != null) {
      result.addAll({'lepto': lepto});
    }

    return result;
  }

  factory LeptoModel.fromMap(Map<String, dynamic> map) {
    return LeptoModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      lepto: map['lepto']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory LeptoModel.fromJson(String source) =>
      LeptoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LeptoModel(id: $id, munCode: $munCode, year: $year, lepto: $lepto)';
  }

  LeptoModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? lepto,
  }) {
    return LeptoModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      lepto: lepto ?? this.lepto,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LeptoModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.lepto == lepto;
  }

  @override
  int get hashCode {
    return id.hashCode ^ munCode.hashCode ^ year.hashCode ^ lepto.hashCode;
  }
}
