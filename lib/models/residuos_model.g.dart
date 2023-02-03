// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residuos_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetResiduosModelCollection on Isar {
  IsarCollection<ResiduosModel> get residuosModels => this.collection();
}

const ResiduosModelSchema = CollectionSchema(
  name: r'ResiduosModel',
  id: 145160998830994937,
  properties: {
    r'IQR': PropertySchema(
      id: 0,
      name: r'IQR',
      type: IsarType.double,
    ),
    r'ISR': PropertySchema(
      id: 1,
      name: r'ISR',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'munCode': PropertySchema(
      id: 3,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 4,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _residuosModelEstimateSize,
  serializeNative: _residuosModelSerializeNative,
  deserializeNative: _residuosModelDeserializeNative,
  deserializePropNative: _residuosModelDeserializePropNative,
  serializeWeb: _residuosModelSerializeWeb,
  deserializeWeb: _residuosModelDeserializeWeb,
  deserializePropWeb: _residuosModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _residuosModelGetId,
  getLinks: _residuosModelGetLinks,
  attach: _residuosModelAttach,
  version: '3.0.0-dev.14',
);

int _residuosModelEstimateSize(
  ResiduosModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _residuosModelSerializeNative(
  ResiduosModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.IQR);
  writer.writeDouble(offsets[1], object.ISR);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.munCode);
  writer.writeLong(offsets[4], object.year);
  return writer.usedBytes;
}

ResiduosModel _residuosModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResiduosModel(
    IQR: reader.readDoubleOrNull(offsets[0]),
    ISR: reader.readDoubleOrNull(offsets[1]),
    munCode: reader.readString(offsets[3]),
    year: reader.readLong(offsets[4]),
  );
  object.id = id;
  return object;
}

P _residuosModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _residuosModelSerializeWeb(
    IsarCollection<ResiduosModel> collection, ResiduosModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

ResiduosModel _residuosModelDeserializeWeb(
    IsarCollection<ResiduosModel> collection, Object jsObj) {
  /*final object = ResiduosModel(IQR: IsarNative.jsObjectGet(jsObj, r'IQR') ,ISR: IsarNative.jsObjectGet(jsObj, r'ISR') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _residuosModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _residuosModelGetId(ResiduosModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _residuosModelGetLinks(ResiduosModel object) {
  return [];
}

void _residuosModelAttach(
    IsarCollection<dynamic> col, Id id, ResiduosModel object) {
  object.id = id;
}

extension ResiduosModelQueryWhereSort
    on QueryBuilder<ResiduosModel, ResiduosModel, QWhere> {
  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResiduosModelQueryWhere
    on QueryBuilder<ResiduosModel, ResiduosModel, QWhereClause> {
  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhereClause> idEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhereClause> idNotEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResiduosModelQueryFilter
    on QueryBuilder<ResiduosModel, ResiduosModel, QFilterCondition> {
  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iQRIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IQR',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iQRIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IQR',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iQREqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IQR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iQRGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IQR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iQRLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IQR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iQRBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IQR',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iSRIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ISR',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iSRIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ISR',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iSREqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ISR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      iSRGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ISR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iSRLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ISR',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> iSRBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ISR',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'munCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'munCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      yearGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition>
      yearLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterFilterCondition> yearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'year',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResiduosModelQueryObject
    on QueryBuilder<ResiduosModel, ResiduosModel, QFilterCondition> {}

extension ResiduosModelQueryLinks
    on QueryBuilder<ResiduosModel, ResiduosModel, QFilterCondition> {}

extension ResiduosModelQuerySortBy
    on QueryBuilder<ResiduosModel, ResiduosModel, QSortBy> {
  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByIQR() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IQR', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByIQRDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IQR', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByISR() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ISR', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByISRDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ISR', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ResiduosModelQuerySortThenBy
    on QueryBuilder<ResiduosModel, ResiduosModel, QSortThenBy> {
  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByIQR() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IQR', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByIQRDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IQR', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByISR() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ISR', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByISRDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ISR', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension ResiduosModelQueryWhereDistinct
    on QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> {
  QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> distinctByIQR() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IQR');
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> distinctByISR() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ISR');
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResiduosModel, ResiduosModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension ResiduosModelQueryProperty
    on QueryBuilder<ResiduosModel, ResiduosModel, QQueryProperty> {
  QueryBuilder<ResiduosModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ResiduosModel, double?, QQueryOperations> IQRProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IQR');
    });
  }

  QueryBuilder<ResiduosModel, double?, QQueryOperations> ISRProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ISR');
    });
  }

  QueryBuilder<ResiduosModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ResiduosModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<ResiduosModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
