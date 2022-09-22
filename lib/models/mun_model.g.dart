// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mun_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetMunModelCollection on Isar {
  IsarCollection<MunModel> get munModels => this.collection();
}

const MunModelSchema = CollectionSchema(
  name: r'MunModel',
  id: 8815776072248454311,
  properties: {
    r'munCode': PropertySchema(
      id: 0,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'munName': PropertySchema(
      id: 1,
      name: r'munName',
      type: IsarType.string,
    ),
    r'munUF': PropertySchema(
      id: 2,
      name: r'munUF',
      type: IsarType.string,
    )
  },
  estimateSize: _munModelEstimateSize,
  serializeNative: _munModelSerializeNative,
  deserializeNative: _munModelDeserializeNative,
  deserializePropNative: _munModelDeserializePropNative,
  serializeWeb: _munModelSerializeWeb,
  deserializeWeb: _munModelDeserializeWeb,
  deserializePropWeb: _munModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _munModelGetId,
  getLinks: _munModelGetLinks,
  attach: _munModelAttach,
  version: '3.0.0-dev.14',
);

int _munModelEstimateSize(
  MunModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  bytesCount += 3 + object.munName.length * 3;
  bytesCount += 3 + object.munUF.length * 3;
  return bytesCount;
}

int _munModelSerializeNative(
  MunModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.munCode);
  writer.writeString(offsets[1], object.munName);
  writer.writeString(offsets[2], object.munUF);
  return writer.usedBytes;
}

MunModel _munModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MunModel(
    munCode: reader.readString(offsets[0]),
    munName: reader.readString(offsets[1]),
    munUF: reader.readString(offsets[2]),
  );
  object.id = id;
  return object;
}

P _munModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _munModelSerializeWeb(
    IsarCollection<MunModel> collection, MunModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

MunModel _munModelDeserializeWeb(
    IsarCollection<MunModel> collection, Object jsObj) {
  /*final object = MunModel(munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',munName: IsarNative.jsObjectGet(jsObj, r'munName') ?? '',munUF: IsarNative.jsObjectGet(jsObj, r'munUF') ?? '',);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _munModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _munModelGetId(MunModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _munModelGetLinks(MunModel object) {
  return [];
}

void _munModelAttach(IsarCollection<dynamic> col, Id id, MunModel object) {
  object.id = id;
}

extension MunModelQueryWhereSort on QueryBuilder<MunModel, MunModel, QWhere> {
  QueryBuilder<MunModel, MunModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MunModelQueryWhere on QueryBuilder<MunModel, MunModel, QWhereClause> {
  QueryBuilder<MunModel, MunModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<MunModel, MunModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterWhereClause> idBetween(
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

extension MunModelQueryFilter
    on QueryBuilder<MunModel, MunModel, QFilterCondition> {
  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'munName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'munName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'munName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munName',
        value: '',
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munName',
        value: '',
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'munUF',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'munUF',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'munUF',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munUF',
        value: '',
      ));
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterFilterCondition> munUFIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munUF',
        value: '',
      ));
    });
  }
}

extension MunModelQueryObject
    on QueryBuilder<MunModel, MunModel, QFilterCondition> {}

extension MunModelQueryLinks
    on QueryBuilder<MunModel, MunModel, QFilterCondition> {}

extension MunModelQuerySortBy on QueryBuilder<MunModel, MunModel, QSortBy> {
  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munName', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munName', Sort.desc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunUF() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munUF', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> sortByMunUFDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munUF', Sort.desc);
    });
  }
}

extension MunModelQuerySortThenBy
    on QueryBuilder<MunModel, MunModel, QSortThenBy> {
  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munName', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munName', Sort.desc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunUF() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munUF', Sort.asc);
    });
  }

  QueryBuilder<MunModel, MunModel, QAfterSortBy> thenByMunUFDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munUF', Sort.desc);
    });
  }
}

extension MunModelQueryWhereDistinct
    on QueryBuilder<MunModel, MunModel, QDistinct> {
  QueryBuilder<MunModel, MunModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MunModel, MunModel, QDistinct> distinctByMunName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MunModel, MunModel, QDistinct> distinctByMunUF(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munUF', caseSensitive: caseSensitive);
    });
  }
}

extension MunModelQueryProperty
    on QueryBuilder<MunModel, MunModel, QQueryProperty> {
  QueryBuilder<MunModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MunModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<MunModel, String, QQueryOperations> munNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munName');
    });
  }

  QueryBuilder<MunModel, String, QQueryOperations> munUFProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munUF');
    });
  }
}
