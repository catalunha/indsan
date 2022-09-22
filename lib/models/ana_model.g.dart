// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ana_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetANAModelCollection on Isar {
  IsarCollection<ANAModel> get aNAModels => this.collection();
}

const ANAModelSchema = CollectionSchema(
  name: r'ANAModel',
  id: 2736834745705582391,
  properties: {
    r'font': PropertySchema(
      id: 0,
      name: r'font',
      type: IsarType.long,
    ),
    r'munCode': PropertySchema(
      id: 1,
      name: r'munCode',
      type: IsarType.string,
    )
  },
  estimateSize: _aNAModelEstimateSize,
  serializeNative: _aNAModelSerializeNative,
  deserializeNative: _aNAModelDeserializeNative,
  deserializePropNative: _aNAModelDeserializePropNative,
  serializeWeb: _aNAModelSerializeWeb,
  deserializeWeb: _aNAModelDeserializeWeb,
  deserializePropWeb: _aNAModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _aNAModelGetId,
  getLinks: _aNAModelGetLinks,
  attach: _aNAModelAttach,
  version: '3.0.0-dev.14',
);

int _aNAModelEstimateSize(
  ANAModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _aNAModelSerializeNative(
  ANAModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.font);
  writer.writeString(offsets[1], object.munCode);
  return writer.usedBytes;
}

ANAModel _aNAModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ANAModel(
    font: reader.readLongOrNull(offsets[0]),
    munCode: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _aNAModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _aNAModelSerializeWeb(
    IsarCollection<ANAModel> collection, ANAModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

ANAModel _aNAModelDeserializeWeb(
    IsarCollection<ANAModel> collection, Object jsObj) {
  /*final object = ANAModel(font: IsarNative.jsObjectGet(jsObj, r'font') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _aNAModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _aNAModelGetId(ANAModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _aNAModelGetLinks(ANAModel object) {
  return [];
}

void _aNAModelAttach(IsarCollection<dynamic> col, Id id, ANAModel object) {
  object.id = id;
}

extension ANAModelQueryWhereSort on QueryBuilder<ANAModel, ANAModel, QWhere> {
  QueryBuilder<ANAModel, ANAModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ANAModelQueryWhere on QueryBuilder<ANAModel, ANAModel, QWhereClause> {
  QueryBuilder<ANAModel, ANAModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<ANAModel, ANAModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterWhereClause> idBetween(
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

extension ANAModelQueryFilter
    on QueryBuilder<ANAModel, ANAModel, QFilterCondition> {
  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'font',
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'font',
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'font',
        value: value,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'font',
        value: value,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'font',
        value: value,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> fontBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'font',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterFilterCondition> munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }
}

extension ANAModelQueryObject
    on QueryBuilder<ANAModel, ANAModel, QFilterCondition> {}

extension ANAModelQueryLinks
    on QueryBuilder<ANAModel, ANAModel, QFilterCondition> {}

extension ANAModelQuerySortBy on QueryBuilder<ANAModel, ANAModel, QSortBy> {
  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> sortByFont() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font', Sort.asc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> sortByFontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font', Sort.desc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }
}

extension ANAModelQuerySortThenBy
    on QueryBuilder<ANAModel, ANAModel, QSortThenBy> {
  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenByFont() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font', Sort.asc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenByFontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'font', Sort.desc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<ANAModel, ANAModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }
}

extension ANAModelQueryWhereDistinct
    on QueryBuilder<ANAModel, ANAModel, QDistinct> {
  QueryBuilder<ANAModel, ANAModel, QDistinct> distinctByFont() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'font');
    });
  }

  QueryBuilder<ANAModel, ANAModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }
}

extension ANAModelQueryProperty
    on QueryBuilder<ANAModel, ANAModel, QQueryProperty> {
  QueryBuilder<ANAModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ANAModel, int?, QQueryOperations> fontProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'font');
    });
  }

  QueryBuilder<ANAModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }
}
