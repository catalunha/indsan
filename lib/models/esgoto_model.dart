// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'esgoto_model.g.dart';

@collection
class EsgotoModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? CT;
  EsgotoModel({
    required this.munCode,
    required this.year,
    this.CT,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (CT != null) {
      result.addAll({'CT': CT});
    }

    return result;
  }

  factory EsgotoModel.fromMap(Map<String, dynamic> map) {
    return EsgotoModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      CT: map['CT']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory EsgotoModel.fromJson(String source) =>
      EsgotoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EsgotoModel(id: $id, munCode: $munCode, year: $year, CT: $CT)';
  }

  EsgotoModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? CT,
  }) {
    return EsgotoModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      CT: CT ?? this.CT,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EsgotoModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.CT == CT;
  }

  @override
  int get hashCode {
    return id.hashCode ^ munCode.hashCode ^ year.hashCode ^ CT.hashCode;
  }
}
