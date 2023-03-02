// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ise_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetIseModelCollection on Isar {
  IsarCollection<IseModel> get iseModels => this.collection();
}

const IseModelSchema = CollectionSchema(
  name: r'IseModel',
  id: 8273332938994983050,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'i2s': PropertySchema(
      id: 1,
      name: r'i2s',
      type: IsarType.double,
    ),
    r'ie1': PropertySchema(
      id: 2,
      name: r'ie1',
      type: IsarType.double,
    ),
    r'ine': PropertySchema(
      id: 3,
      name: r'ine',
      type: IsarType.double,
    ),
    r'irm': PropertySchema(
      id: 4,
      name: r'irm',
      type: IsarType.double,
    ),
    r'isp': PropertySchema(
      id: 5,
      name: r'isp',
      type: IsarType.double,
    ),
    r'munCode': PropertySchema(
      id: 6,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 7,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _iseModelEstimateSize,
  serializeNative: _iseModelSerializeNative,
  deserializeNative: _iseModelDeserializeNative,
  deserializePropNative: _iseModelDeserializePropNative,
  serializeWeb: _iseModelSerializeWeb,
  deserializeWeb: _iseModelDeserializeWeb,
  deserializePropWeb: _iseModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _iseModelGetId,
  getLinks: _iseModelGetLinks,
  attach: _iseModelAttach,
  version: '3.0.0-dev.14',
);

int _iseModelEstimateSize(
  IseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _iseModelSerializeNative(
  IseModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeDouble(offsets[1], object.i2s);
  writer.writeDouble(offsets[2], object.ie1);
  writer.writeDouble(offsets[3], object.ine);
  writer.writeDouble(offsets[4], object.irm);
  writer.writeDouble(offsets[5], object.isp);
  writer.writeString(offsets[6], object.munCode);
  writer.writeLong(offsets[7], object.year);
  return writer.usedBytes;
}

IseModel _iseModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IseModel(
    i2s: reader.readDoubleOrNull(offsets[1]),
    ie1: reader.readDoubleOrNull(offsets[2]),
    ine: reader.readDoubleOrNull(offsets[3]),
    irm: reader.readDoubleOrNull(offsets[4]),
    isp: reader.readDoubleOrNull(offsets[5]),
    munCode: reader.readString(offsets[6]),
    year: reader.readLong(offsets[7]),
  );
  object.id = id;
  return object;
}

P _iseModelDeserializePropNative<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _iseModelSerializeWeb(
    IsarCollection<IseModel> collection, IseModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

IseModel _iseModelDeserializeWeb(
    IsarCollection<IseModel> collection, Object jsObj) {
  /*final object = IseModel(i2s: IsarNative.jsObjectGet(jsObj, r'i2s') ,ie1: IsarNative.jsObjectGet(jsObj, r'ie1') ,ine: IsarNative.jsObjectGet(jsObj, r'ine') ,irm: IsarNative.jsObjectGet(jsObj, r'irm') ,isp: IsarNative.jsObjectGet(jsObj, r'isp') ,munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',year: IsarNative.jsObjectGet(jsObj, r'year') ?? (double.negativeInfinity as int),);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _iseModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _iseModelGetId(IseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iseModelGetLinks(IseModel object) {
  return [];
}

void _iseModelAttach(IsarCollection<dynamic> col, Id id, IseModel object) {
  object.id = id;
}

extension IseModelQueryWhereSort on QueryBuilder<IseModel, IseModel, QWhere> {
  QueryBuilder<IseModel, IseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IseModelQueryWhere on QueryBuilder<IseModel, IseModel, QWhereClause> {
  QueryBuilder<IseModel, IseModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<IseModel, IseModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterWhereClause> idBetween(
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

extension IseModelQueryFilter
    on QueryBuilder<IseModel, IseModel, QFilterCondition> {
  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'i2s',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'i2s',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'i2s',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'i2s',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'i2s',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> i2sBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'i2s',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ie1',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ie1',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ie1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ie1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ie1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ie1Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ie1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ine',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ine',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ine',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ine',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ine',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ineBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ine',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'irm',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'irm',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'irm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'irm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'irm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> irmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'irm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isp',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isp',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> ispBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<IseModel, IseModel, QAfterFilterCondition> yearBetween(
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

extension IseModelQueryObject
    on QueryBuilder<IseModel, IseModel, QFilterCondition> {}

extension IseModelQueryLinks
    on QueryBuilder<IseModel, IseModel, QFilterCondition> {}

extension IseModelQuerySortBy on QueryBuilder<IseModel, IseModel, QSortBy> {
  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByI2s() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'i2s', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByI2sDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'i2s', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIe1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ie1', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIe1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ie1', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ine', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ine', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIrm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irm', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIrmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irm', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIsp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isp', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByIspDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isp', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension IseModelQuerySortThenBy
    on QueryBuilder<IseModel, IseModel, QSortThenBy> {
  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByI2s() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'i2s', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByI2sDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'i2s', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIe1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ie1', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIe1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ie1', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ine', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ine', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIrm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irm', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIrmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irm', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIsp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isp', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByIspDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isp', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<IseModel, IseModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension IseModelQueryWhereDistinct
    on QueryBuilder<IseModel, IseModel, QDistinct> {
  QueryBuilder<IseModel, IseModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByI2s() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'i2s');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByIe1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ie1');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByIne() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ine');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByIrm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'irm');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByIsp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isp');
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IseModel, IseModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension IseModelQueryProperty
    on QueryBuilder<IseModel, IseModel, QQueryProperty> {
  QueryBuilder<IseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IseModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<IseModel, double?, QQueryOperations> i2sProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'i2s');
    });
  }

  QueryBuilder<IseModel, double?, QQueryOperations> ie1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ie1');
    });
  }

  QueryBuilder<IseModel, double?, QQueryOperations> ineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ine');
    });
  }

  QueryBuilder<IseModel, double?, QQueryOperations> irmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'irm');
    });
  }

  QueryBuilder<IseModel, double?, QQueryOperations> ispProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isp');
    });
  }

  QueryBuilder<IseModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<IseModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
