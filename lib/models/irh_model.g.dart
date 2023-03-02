// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irh_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetIrhModelCollection on Isar {
  IsarCollection<IrhModel> get irhModels => this.collection();
}

const IrhModelSchema = CollectionSchema(
  name: r'IrhModel',
  id: 5202891494265221048,
  properties: {
    r'dem': PropertySchema(
      id: 0,
      name: r'dem',
      type: IsarType.double,
    ),
    r'disp': PropertySchema(
      id: 1,
      name: r'disp',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'iqb': PropertySchema(
      id: 3,
      name: r'iqb',
      type: IsarType.double,
    ),
    r'munCode': PropertySchema(
      id: 4,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 5,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _irhModelEstimateSize,
  serializeNative: _irhModelSerializeNative,
  deserializeNative: _irhModelDeserializeNative,
  deserializePropNative: _irhModelDeserializePropNative,
  serializeWeb: _irhModelSerializeWeb,
  deserializeWeb: _irhModelDeserializeWeb,
  deserializePropWeb: _irhModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _irhModelGetId,
  getLinks: _irhModelGetLinks,
  attach: _irhModelAttach,
  version: '3.0.0-dev.14',
);

int _irhModelEstimateSize(
  IrhModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _irhModelSerializeNative(
  IrhModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.dem);
  writer.writeDouble(offsets[1], object.disp);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeDouble(offsets[3], object.iqb);
  writer.writeString(offsets[4], object.munCode);
  writer.writeLong(offsets[5], object.year);
  return writer.usedBytes;
}

IrhModel _irhModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IrhModel(
    dem: reader.readDoubleOrNull(offsets[0]),
    disp: reader.readDoubleOrNull(offsets[1]),
    iqb: reader.readDoubleOrNull(offsets[3]),
    munCode: reader.readString(offsets[4]),
    year: reader.readLong(offsets[5]),
  );
  object.id = id;
  return object;
}

P _irhModelDeserializePropNative<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _irhModelSerializeWeb(
    IsarCollection<IrhModel> collection, IrhModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

IrhModel _irhModelDeserializeWeb(
    IsarCollection<IrhModel> collection, Object jsObj) {
  /*final object = IrhModel(dem: IsarNative.jsObjectGet(jsObj, r'dem') ,disp: IsarNative.jsObjectGet(jsObj, r'disp') ,iqb: IsarNative.jsObjectGet(jsObj, r'iqb') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _irhModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _irhModelGetId(IrhModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _irhModelGetLinks(IrhModel object) {
  return [];
}

void _irhModelAttach(IsarCollection<dynamic> col, Id id, IrhModel object) {
  object.id = id;
}

extension IrhModelQueryWhereSort on QueryBuilder<IrhModel, IrhModel, QWhere> {
  QueryBuilder<IrhModel, IrhModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IrhModelQueryWhere on QueryBuilder<IrhModel, IrhModel, QWhereClause> {
  QueryBuilder<IrhModel, IrhModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<IrhModel, IrhModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterWhereClause> idBetween(
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

extension IrhModelQueryFilter
    on QueryBuilder<IrhModel, IrhModel, QFilterCondition> {
  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dem',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dem',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dem',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dem',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dem',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> demBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dem',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'disp',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'disp',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'disp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'disp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> dispBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'disp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iqb',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iqb',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iqb',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iqb',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iqb',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> iqbBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iqb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<IrhModel, IrhModel, QAfterFilterCondition> yearBetween(
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

extension IrhModelQueryObject
    on QueryBuilder<IrhModel, IrhModel, QFilterCondition> {}

extension IrhModelQueryLinks
    on QueryBuilder<IrhModel, IrhModel, QFilterCondition> {}

extension IrhModelQuerySortBy on QueryBuilder<IrhModel, IrhModel, QSortBy> {
  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByDem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dem', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByDemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dem', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByDisp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disp', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByDispDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disp', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByIqb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iqb', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByIqbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iqb', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension IrhModelQuerySortThenBy
    on QueryBuilder<IrhModel, IrhModel, QSortThenBy> {
  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByDem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dem', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByDemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dem', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByDisp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disp', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByDispDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disp', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByIqb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iqb', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByIqbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iqb', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension IrhModelQueryWhereDistinct
    on QueryBuilder<IrhModel, IrhModel, QDistinct> {
  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByDem() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dem');
    });
  }

  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByDisp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'disp');
    });
  }

  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByIqb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iqb');
    });
  }

  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IrhModel, IrhModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension IrhModelQueryProperty
    on QueryBuilder<IrhModel, IrhModel, QQueryProperty> {
  QueryBuilder<IrhModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IrhModel, double?, QQueryOperations> demProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dem');
    });
  }

  QueryBuilder<IrhModel, double?, QQueryOperations> dispProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'disp');
    });
  }

  QueryBuilder<IrhModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<IrhModel, double?, QQueryOperations> iqbProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iqb');
    });
  }

  QueryBuilder<IrhModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<IrhModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
