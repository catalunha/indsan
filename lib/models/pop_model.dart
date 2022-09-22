// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
part 'pop_model.g.dart';

@collection
class PopModel {
  Id id = Isar.autoIncrement;
  String munCode;
  double? y2015;
  double? y2016;
  double? y2017;
  double? y2018;
  double? y2019;
  double? y2020;
  PopModel({
    required this.munCode,
    this.y2015,
    this.y2016,
    this.y2017,
    this.y2018,
    this.y2019,
    this.y2020,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'munCode': munCode,
      '2015': y2015,
      '2016': y2016,
      '2017': y2017,
      '2018': y2018,
      '2019': y2019,
      '2020': y2020,
    };
  }

  factory PopModel.fromMap(Map<String, dynamic> map) {
    return PopModel(
      munCode: map['munCode'] as String,
      y2015: map['2015']?.toDouble(),
      y2016: map['2016']?.toDouble(),
      y2017: map['2017']?.toDouble(),
      y2018: map['2018']?.toDouble(),
      y2019: map['2019']?.toDouble(),
      y2020: map['2020']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PopModel.fromJson(String source) =>
      PopModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PopModel(id: $id, munCode: $munCode, y2015: $y2015, y2016: $y2016, y2017: $y2017, y2018: $y2018, y2019: $y2019, y2020: $y2020)';
  }
}
