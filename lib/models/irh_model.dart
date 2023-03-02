// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'irh_model.g.dart';

@collection
class IrhModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? iqb;
  double? disp;
  double? dem;
  IrhModel({
    required this.munCode,
    required this.year,
    this.iqb,
    this.disp,
    this.dem,
  });

  IrhModel copyWith({
    String? munCode,
    int? year,
    double? iqb,
    double? disp,
    double? dem,
  }) {
    return IrhModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      iqb: iqb ?? this.iqb,
      disp: disp ?? this.disp,
      dem: dem ?? this.dem,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (iqb != null) {
      result.addAll({'iqb': iqb});
    }
    if (disp != null) {
      result.addAll({'disp': disp});
    }
    if (dem != null) {
      result.addAll({'dem': dem});
    }

    return result;
  }

  factory IrhModel.fromMap(Map<String, dynamic> map) {
    return IrhModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      iqb: map['iqb']?.toDouble(),
      disp: map['disp']?.toDouble(),
      dem: map['dem']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory IrhModel.fromJson(String source) =>
      IrhModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'IrhModel(id: $id, munCode: $munCode, year: $year, iqb: $iqb, disp: $disp, dem: $dem)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IrhModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.iqb == iqb &&
        other.disp == disp &&
        other.dem == dem;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        munCode.hashCode ^
        year.hashCode ^
        iqb.hashCode ^
        disp.hashCode ^
        dem.hashCode;
  }
}
