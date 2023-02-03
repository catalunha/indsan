// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

import 'package:isar/isar.dart';

part 'snis_model.g.dart';

@collection
class SNISModel {
  Id id = Isar.autoIncrement;
  String munCode;
  int year;
  double? IN022_AE;
  double? IN023_AE;
  double? IN049_AE;
  double? QD006;
  double? QD007;
  double? QD008;
  double? QD009;
  double? QD019;
  double? QD020;
  double? QD026;
  double? QD027;
  double? QD028;
  double? AG006;
  double? AG012;
  double? AG024;
  double? POP;
  double? IN024_AE;
  double? ES005;
  double? ES006;
  double? IN014_RS;
  SNISModel({
    required this.munCode,
    required this.year,
    this.IN022_AE,
    this.IN023_AE,
    this.IN049_AE,
    this.QD006,
    this.QD007,
    this.QD008,
    this.QD009,
    this.QD019,
    this.QD020,
    this.QD026,
    this.QD027,
    this.QD028,
    this.AG006,
    this.AG012,
    this.AG024,
    this.POP,
    this.IN024_AE,
    this.ES005,
    this.ES006,
    this.IN014_RS,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'munCode': munCode});
    result.addAll({'year': year});
    if (IN022_AE != null) {
      result.addAll({'IN022_AE': IN022_AE});
    }
    if (IN023_AE != null) {
      result.addAll({'IN023_AE': IN023_AE});
    }
    if (IN049_AE != null) {
      result.addAll({'IN049_AE': IN049_AE});
    }
    if (QD006 != null) {
      result.addAll({'QD006': QD006});
    }
    if (QD007 != null) {
      result.addAll({'QD007': QD007});
    }
    if (QD008 != null) {
      result.addAll({'QD008': QD008});
    }
    if (QD009 != null) {
      result.addAll({'QD009': QD009});
    }
    if (QD019 != null) {
      result.addAll({'QD019': QD019});
    }
    if (QD020 != null) {
      result.addAll({'QD020': QD020});
    }
    if (QD026 != null) {
      result.addAll({'QD026': QD026});
    }
    if (QD027 != null) {
      result.addAll({'QD027': QD027});
    }
    if (QD028 != null) {
      result.addAll({'QD028': QD028});
    }
    if (AG006 != null) {
      result.addAll({'AG006': AG006});
    }
    if (AG012 != null) {
      result.addAll({'AG012': AG012});
    }
    if (AG024 != null) {
      result.addAll({'AG024': AG024});
    }
    if (POP != null) {
      result.addAll({'POP': POP});
    }
    if (IN024_AE != null) {
      result.addAll({'IN024_AE': IN024_AE});
    }
    if (ES005 != null) {
      result.addAll({'ES005': ES005});
    }
    if (ES006 != null) {
      result.addAll({'ES006': ES006});
    }
    if (IN014_RS != null) {
      result.addAll({'IN014_RS': IN014_RS});
    }

    return result;
  }

  factory SNISModel.fromMap(Map<String, dynamic> map) {
    return SNISModel(
      munCode: map['munCode'] ?? '',
      year: map['year']?.toInt() ?? 0,
      IN022_AE: map['IN022_AE']?.toDouble(),
      IN023_AE: map['IN023_AE']?.toDouble(),
      IN049_AE: map['IN049_AE']?.toDouble(),
      QD006: map['QD006']?.toDouble(),
      QD007: map['QD007']?.toDouble(),
      QD008: map['QD008']?.toDouble(),
      QD009: map['QD009']?.toDouble(),
      QD019: map['QD019']?.toDouble(),
      QD020: map['QD020']?.toDouble(),
      QD026: map['QD026']?.toDouble(),
      QD027: map['QD027']?.toDouble(),
      QD028: map['QD028']?.toDouble(),
      AG006: map['AG006']?.toDouble(),
      AG012: map['AG012']?.toDouble(),
      AG024: map['AG024']?.toDouble(),
      POP: map['POP']?.toDouble(),
      IN024_AE: map['IN024_AE']?.toDouble(),
      ES005: map['ES005']?.toDouble(),
      ES006: map['ES006']?.toDouble(),
      IN014_RS: map['IN014_RS']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory SNISModel.fromJson(String source) =>
      SNISModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SNISModel(id: $id, munCode: $munCode, year: $year, IN022_AE: $IN022_AE, IN023_AE: $IN023_AE, IN049_AE: $IN049_AE, QD006: $QD006, QD007: $QD007, QD008: $QD008, QD009: $QD009, QD019: $QD019, QD020: $QD020, QD026: $QD026, QD027: $QD027, QD028: $QD028, AG006: $AG006, AG012: $AG012, AG024: $AG024, POP: $POP, IN024_AE: $IN024_AE, ES005: $ES005, ES006: $ES006, IN014_RS: $IN014_RS)';
  }

  SNISModel copyWith({
    Id? id,
    String? munCode,
    int? year,
    double? IN022_AE,
    double? IN023_AE,
    double? IN049_AE,
    double? QD006,
    double? QD007,
    double? QD008,
    double? QD009,
    double? QD019,
    double? QD020,
    double? QD026,
    double? QD027,
    double? QD028,
    double? AG006,
    double? AG012,
    double? AG024,
    double? POP,
    double? IN024_AE,
    double? ES005,
    double? ES006,
    double? IN014_RS,
  }) {
    return SNISModel(
      munCode: munCode ?? this.munCode,
      year: year ?? this.year,
      IN022_AE: IN022_AE ?? this.IN022_AE,
      IN023_AE: IN023_AE ?? this.IN023_AE,
      IN049_AE: IN049_AE ?? this.IN049_AE,
      QD006: QD006 ?? this.QD006,
      QD007: QD007 ?? this.QD007,
      QD008: QD008 ?? this.QD008,
      QD009: QD009 ?? this.QD009,
      QD019: QD019 ?? this.QD019,
      QD020: QD020 ?? this.QD020,
      QD026: QD026 ?? this.QD026,
      QD027: QD027 ?? this.QD027,
      QD028: QD028 ?? this.QD028,
      AG006: AG006 ?? this.AG006,
      AG012: AG012 ?? this.AG012,
      AG024: AG024 ?? this.AG024,
      POP: POP ?? this.POP,
      IN024_AE: IN024_AE ?? this.IN024_AE,
      ES005: ES005 ?? this.ES005,
      ES006: ES006 ?? this.ES006,
      IN014_RS: IN014_RS ?? this.IN014_RS,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SNISModel &&
        other.id == id &&
        other.munCode == munCode &&
        other.year == year &&
        other.IN022_AE == IN022_AE &&
        other.IN023_AE == IN023_AE &&
        other.IN049_AE == IN049_AE &&
        other.QD006 == QD006 &&
        other.QD007 == QD007 &&
        other.QD008 == QD008 &&
        other.QD009 == QD009 &&
        other.QD019 == QD019 &&
        other.QD020 == QD020 &&
        other.QD026 == QD026 &&
        other.QD027 == QD027 &&
        other.QD028 == QD028 &&
        other.AG006 == AG006 &&
        other.AG012 == AG012 &&
        other.AG024 == AG024 &&
        other.POP == POP &&
        other.IN024_AE == IN024_AE &&
        other.ES005 == ES005 &&
        other.ES006 == ES006 &&
        other.IN014_RS == IN014_RS;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        munCode.hashCode ^
        year.hashCode ^
        IN022_AE.hashCode ^
        IN023_AE.hashCode ^
        IN049_AE.hashCode ^
        QD006.hashCode ^
        QD007.hashCode ^
        QD008.hashCode ^
        QD009.hashCode ^
        QD019.hashCode ^
        QD020.hashCode ^
        QD026.hashCode ^
        QD027.hashCode ^
        QD028.hashCode ^
        AG006.hashCode ^
        AG012.hashCode ^
        AG024.hashCode ^
        POP.hashCode ^
        IN024_AE.hashCode ^
        ES005.hashCode ^
        ES006.hashCode ^
        IN014_RS.hashCode;
  }
}
