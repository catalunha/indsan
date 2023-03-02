// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'ise_model.g.dart';

@collection
class IseModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? isp;
  double? i2s;
  double? irm;
  double? ine;
  double? ie1;
  IseModel({
    required this.munCode,
    required this.year,
    this.isp,
    this.i2s,
    this.irm,
    this.ine,
    this.ie1,
  });

  IseModel copyWith({
    String? munCode,
    int? year,
    double? isp,
    double? i2s,
    double? irm,
    double? ine,
    double? ie1,
  }) {
    return IseModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      isp: isp ?? this.isp,
      i2s: i2s ?? this.i2s,
      irm: irm ?? this.irm,
      ine: ine ?? this.ine,
      ie1: ie1 ?? this.ie1,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (isp != null) {
      result.addAll({'isp': isp});
    }
    if (i2s != null) {
      result.addAll({'i2s': i2s});
    }
    if (irm != null) {
      result.addAll({'irm': irm});
    }
    if (ine != null) {
      result.addAll({'ine': ine});
    }
    if (ie1 != null) {
      result.addAll({'ie1': ie1});
    }

    return result;
  }

  factory IseModel.fromMap(Map<String, dynamic> map) {
    return IseModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      isp: map['isp']?.toDouble(),
      i2s: map['i2s']?.toDouble(),
      irm: map['irm']?.toDouble(),
      ine: map['ine']?.toDouble(),
      ie1: map['ie1']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory IseModel.fromJson(String source) =>
      IseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'IseModel(id: $id, munCode: $munCode, year: $year, isp: $isp, i2s: $i2s, irm: $irm, ine: $ine, ie1: $ie1)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IseModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.isp == isp &&
        other.i2s == i2s &&
        other.irm == irm &&
        other.ine == ine &&
        other.ie1 == ie1;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        munCode.hashCode ^
        year.hashCode ^
        isp.hashCode ^
        i2s.hashCode ^
        irm.hashCode ^
        ine.hashCode ^
        ie1.hashCode;
  }
}
