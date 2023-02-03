// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'residuos_model.g.dart';

@collection
class ResiduosModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? IQR;
  double? ISR;
  ResiduosModel({
    required this.munCode,
    required this.year,
    this.IQR,
    this.ISR,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (IQR != null) {
      result.addAll({'IQR': IQR});
    }
    if (ISR != null) {
      result.addAll({'ISR': ISR});
    }
    return result;
  }

  factory ResiduosModel.fromMap(Map<String, dynamic> map) {
    return ResiduosModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      IQR: map['IQR']?.toDouble(),
      ISR: map['ISR']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ResiduosModel.fromJson(String source) =>
      ResiduosModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResiduosModel(id: $id, munCode: $munCode, year: $year, IQR: $IQR, ISR: $ISR)';
  }

  ResiduosModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? IQR,
    double? ISR,
  }) {
    return ResiduosModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      IQR: IQR ?? this.IQR,
      ISR: ISR ?? this.ISR,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResiduosModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.IQR == IQR &&
        other.ISR == ISR;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        munCode.hashCode ^
        year.hashCode ^
        IQR.hashCode ^
        ISR.hashCode;
  }
}
