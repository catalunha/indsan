// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esquis_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetEsquisModelCollection on Isar {
  IsarCollection<EsquisModel> get esquisModels => this.collection();
}

const EsquisModelSchema = CollectionSchema(
  name: r'EsquisModel',
  id: -8422960478381423227,
  properties: {
    r'esquis': PropertySchema(
      id: 0,
      name: r'esquis',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'munCode': PropertySchema(
      id: 2,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 3,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _esquisModelEstimateSize,
  serializeNative: _esquisModelSerializeNative,
  deserializeNative: _esquisModelDeserializeNative,
  deserializePropNative: _esquisModelDeserializePropNative,
  serializeWeb: _esquisModelSerializeWeb,
  deserializeWeb: _esquisModelDeserializeWeb,
  deserializePropWeb: _esquisModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _esquisModelGetId,
  getLinks: _esquisModelGetLinks,
  attach: _esquisModelAttach,
  version: '3.0.0-dev.14',
);

int _esquisModelEstimateSize(
  EsquisModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _esquisModelSerializeNative(
  EsquisModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.esquis);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeString(offsets[2], object.munCode);
  writer.writeLong(offsets[3], object.year);
  return writer.usedBytes;
}

EsquisModel _esquisModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EsquisModel(
    esquis: reader.readDoubleOrNull(offsets[0]),
    munCode: reader.readString(offsets[2]),
    year: reader.readLong(offsets[3]),
  );
  object.id = id;
  return object;
}

P _esquisModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _esquisModelSerializeWeb(
    IsarCollection<EsquisModel> collection, EsquisModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

EsquisModel _esquisModelDeserializeWeb(
    IsarCollection<EsquisModel> collection, Object jsObj) {
  /*final object = EsquisModel(esquis: IsarNative.jsObjectGet(jsObj, r'esquis') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _esquisModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _esquisModelGetId(EsquisModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _esquisModelGetLinks(EsquisModel object) {
  return [];
}

void _esquisModelAttach(
    IsarCollection<dynamic> col, Id id, EsquisModel object) {
  object.id = id;
}

extension EsquisModelQueryWhereSort
    on QueryBuilder<EsquisModel, EsquisModel, QWhere> {
  QueryBuilder<EsquisModel, EsquisModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EsquisModelQueryWhere
    on QueryBuilder<EsquisModel, EsquisModel, QWhereClause> {
  QueryBuilder<EsquisModel, EsquisModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterWhereClause> idBetween(
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

extension EsquisModelQueryFilter
    on QueryBuilder<EsquisModel, EsquisModel, QFilterCondition> {
  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> esquisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'esquis',
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
      esquisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'esquis',
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> esquisEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esquis',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
      esquisGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'esquis',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> esquisLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'esquis',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> esquisBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'esquis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'munCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> munCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'munCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
      munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition>
      munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<EsquisModel, EsquisModel, QAfterFilterCondition> yearBetween(
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

extension EsquisModelQueryObject
    on QueryBuilder<EsquisModel, EsquisModel, QFilterCondition> {}

extension EsquisModelQueryLinks
    on QueryBuilder<EsquisModel, EsquisModel, QFilterCondition> {}

extension EsquisModelQuerySortBy
    on QueryBuilder<EsquisModel, EsquisModel, QSortBy> {
  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByEsquis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esquis', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByEsquisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esquis', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension EsquisModelQuerySortThenBy
    on QueryBuilder<EsquisModel, EsquisModel, QSortThenBy> {
  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByEsquis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esquis', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByEsquisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esquis', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension EsquisModelQueryWhereDistinct
    on QueryBuilder<EsquisModel, EsquisModel, QDistinct> {
  QueryBuilder<EsquisModel, EsquisModel, QDistinct> distinctByEsquis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esquis');
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EsquisModel, EsquisModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension EsquisModelQueryProperty
    on QueryBuilder<EsquisModel, EsquisModel, QQueryProperty> {
  QueryBuilder<EsquisModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EsquisModel, double?, QQueryOperations> esquisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esquis');
    });
  }

  QueryBuilder<EsquisModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<EsquisModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<EsquisModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
