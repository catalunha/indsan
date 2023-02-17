// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dengue_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetDengueModelCollection on Isar {
  IsarCollection<DengueModel> get dengueModels => this.collection();
}

const DengueModelSchema = CollectionSchema(
  name: r'DengueModel',
  id: -1612942083286058751,
  properties: {
    r'dengue': PropertySchema(
      id: 0,
      name: r'dengue',
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
  estimateSize: _dengueModelEstimateSize,
  serializeNative: _dengueModelSerializeNative,
  deserializeNative: _dengueModelDeserializeNative,
  deserializePropNative: _dengueModelDeserializePropNative,
  serializeWeb: _dengueModelSerializeWeb,
  deserializeWeb: _dengueModelDeserializeWeb,
  deserializePropWeb: _dengueModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dengueModelGetId,
  getLinks: _dengueModelGetLinks,
  attach: _dengueModelAttach,
  version: '3.0.0-dev.14',
);

int _dengueModelEstimateSize(
  DengueModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _dengueModelSerializeNative(
  DengueModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.dengue);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeString(offsets[2], object.munCode);
  writer.writeLong(offsets[3], object.year);
  return writer.usedBytes;
}

DengueModel _dengueModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DengueModel(
    dengue: reader.readDoubleOrNull(offsets[0]),
    munCode: reader.readString(offsets[2]),
    year: reader.readLong(offsets[3]),
  );
  object.id = id;
  return object;
}

P _dengueModelDeserializePropNative<P>(
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

Object _dengueModelSerializeWeb(
    IsarCollection<DengueModel> collection, DengueModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

DengueModel _dengueModelDeserializeWeb(
    IsarCollection<DengueModel> collection, Object jsObj) {
  /*final object = DengueModel(dengue: IsarNative.jsObjectGet(jsObj, r'dengue') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _dengueModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _dengueModelGetId(DengueModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dengueModelGetLinks(DengueModel object) {
  return [];
}

void _dengueModelAttach(
    IsarCollection<dynamic> col, Id id, DengueModel object) {
  object.id = id;
}

extension DengueModelQueryWhereSort
    on QueryBuilder<DengueModel, DengueModel, QWhere> {
  QueryBuilder<DengueModel, DengueModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DengueModelQueryWhere
    on QueryBuilder<DengueModel, DengueModel, QWhereClause> {
  QueryBuilder<DengueModel, DengueModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DengueModel, DengueModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterWhereClause> idBetween(
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

extension DengueModelQueryFilter
    on QueryBuilder<DengueModel, DengueModel, QFilterCondition> {
  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> dengueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dengue',
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
      dengueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dengue',
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> dengueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dengue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
      dengueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dengue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> dengueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dengue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> dengueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dengue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
      munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition>
      munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<DengueModel, DengueModel, QAfterFilterCondition> yearBetween(
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

extension DengueModelQueryObject
    on QueryBuilder<DengueModel, DengueModel, QFilterCondition> {}

extension DengueModelQueryLinks
    on QueryBuilder<DengueModel, DengueModel, QFilterCondition> {}

extension DengueModelQuerySortBy
    on QueryBuilder<DengueModel, DengueModel, QSortBy> {
  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByDengue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dengue', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByDengueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dengue', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension DengueModelQuerySortThenBy
    on QueryBuilder<DengueModel, DengueModel, QSortThenBy> {
  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByDengue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dengue', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByDengueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dengue', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension DengueModelQueryWhereDistinct
    on QueryBuilder<DengueModel, DengueModel, QDistinct> {
  QueryBuilder<DengueModel, DengueModel, QDistinct> distinctByDengue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dengue');
    });
  }

  QueryBuilder<DengueModel, DengueModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<DengueModel, DengueModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DengueModel, DengueModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension DengueModelQueryProperty
    on QueryBuilder<DengueModel, DengueModel, QQueryProperty> {
  QueryBuilder<DengueModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DengueModel, double?, QQueryOperations> dengueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dengue');
    });
  }

  QueryBuilder<DengueModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<DengueModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<DengueModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
