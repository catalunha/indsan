// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lepto_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetLeptoModelCollection on Isar {
  IsarCollection<LeptoModel> get leptoModels => this.collection();
}

const LeptoModelSchema = CollectionSchema(
  name: r'LeptoModel',
  id: -3897915554137092711,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'lepto': PropertySchema(
      id: 1,
      name: r'lepto',
      type: IsarType.double,
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
  estimateSize: _leptoModelEstimateSize,
  serializeNative: _leptoModelSerializeNative,
  deserializeNative: _leptoModelDeserializeNative,
  deserializePropNative: _leptoModelDeserializePropNative,
  serializeWeb: _leptoModelSerializeWeb,
  deserializeWeb: _leptoModelDeserializeWeb,
  deserializePropWeb: _leptoModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _leptoModelGetId,
  getLinks: _leptoModelGetLinks,
  attach: _leptoModelAttach,
  version: '3.0.0-dev.14',
);

int _leptoModelEstimateSize(
  LeptoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _leptoModelSerializeNative(
  LeptoModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeDouble(offsets[1], object.lepto);
  writer.writeString(offsets[2], object.munCode);
  writer.writeLong(offsets[3], object.year);
  return writer.usedBytes;
}

LeptoModel _leptoModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LeptoModel(
    lepto: reader.readDoubleOrNull(offsets[1]),
    munCode: reader.readString(offsets[2]),
    year: reader.readLong(offsets[3]),
  );
  object.id = id;
  return object;
}

P _leptoModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _leptoModelSerializeWeb(
    IsarCollection<LeptoModel> collection, LeptoModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

LeptoModel _leptoModelDeserializeWeb(
    IsarCollection<LeptoModel> collection, Object jsObj) {
  /*final object = LeptoModel(lepto: IsarNative.jsObjectGet(jsObj, r'lepto') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _leptoModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _leptoModelGetId(LeptoModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _leptoModelGetLinks(LeptoModel object) {
  return [];
}

void _leptoModelAttach(IsarCollection<dynamic> col, Id id, LeptoModel object) {
  object.id = id;
}

extension LeptoModelQueryWhereSort
    on QueryBuilder<LeptoModel, LeptoModel, QWhere> {
  QueryBuilder<LeptoModel, LeptoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LeptoModelQueryWhere
    on QueryBuilder<LeptoModel, LeptoModel, QWhereClause> {
  QueryBuilder<LeptoModel, LeptoModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterWhereClause> idBetween(
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

extension LeptoModelQueryFilter
    on QueryBuilder<LeptoModel, LeptoModel, QFilterCondition> {
  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition>
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lepto',
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lepto',
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lepto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lepto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lepto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> leptoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lepto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition>
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition>
      munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<LeptoModel, LeptoModel, QAfterFilterCondition> yearBetween(
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

extension LeptoModelQueryObject
    on QueryBuilder<LeptoModel, LeptoModel, QFilterCondition> {}

extension LeptoModelQueryLinks
    on QueryBuilder<LeptoModel, LeptoModel, QFilterCondition> {}

extension LeptoModelQuerySortBy
    on QueryBuilder<LeptoModel, LeptoModel, QSortBy> {
  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByLepto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lepto', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByLeptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lepto', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension LeptoModelQuerySortThenBy
    on QueryBuilder<LeptoModel, LeptoModel, QSortThenBy> {
  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByLepto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lepto', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByLeptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lepto', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension LeptoModelQueryWhereDistinct
    on QueryBuilder<LeptoModel, LeptoModel, QDistinct> {
  QueryBuilder<LeptoModel, LeptoModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QDistinct> distinctByLepto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lepto');
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LeptoModel, LeptoModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension LeptoModelQueryProperty
    on QueryBuilder<LeptoModel, LeptoModel, QQueryProperty> {
  QueryBuilder<LeptoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LeptoModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<LeptoModel, double?, QQueryOperations> leptoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lepto');
    });
  }

  QueryBuilder<LeptoModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<LeptoModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
