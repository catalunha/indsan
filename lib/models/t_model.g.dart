// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetTModelCollection on Isar {
  IsarCollection<TModel> get tModels => this.collection();
}

const TModelSchema = CollectionSchema(
  name: r'TModel',
  id: 4461527137832111358,
  properties: {
    r'munCode': PropertySchema(
      id: 0,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'y2015': PropertySchema(
      id: 1,
      name: r'y2015',
      type: IsarType.double,
    ),
    r'y2016': PropertySchema(
      id: 2,
      name: r'y2016',
      type: IsarType.double,
    ),
    r'y2017': PropertySchema(
      id: 3,
      name: r'y2017',
      type: IsarType.double,
    ),
    r'y2018': PropertySchema(
      id: 4,
      name: r'y2018',
      type: IsarType.double,
    ),
    r'y2019': PropertySchema(
      id: 5,
      name: r'y2019',
      type: IsarType.double,
    ),
    r'y2020': PropertySchema(
      id: 6,
      name: r'y2020',
      type: IsarType.double,
    )
  },
  estimateSize: _tModelEstimateSize,
  serializeNative: _tModelSerializeNative,
  deserializeNative: _tModelDeserializeNative,
  deserializePropNative: _tModelDeserializePropNative,
  serializeWeb: _tModelSerializeWeb,
  deserializeWeb: _tModelDeserializeWeb,
  deserializePropWeb: _tModelDeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tModelGetId,
  getLinks: _tModelGetLinks,
  attach: _tModelAttach,
  version: '3.0.0-dev.14',
);

int _tModelEstimateSize(
  TModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

int _tModelSerializeNative(
  TModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.munCode);
  writer.writeDouble(offsets[1], object.y2015);
  writer.writeDouble(offsets[2], object.y2016);
  writer.writeDouble(offsets[3], object.y2017);
  writer.writeDouble(offsets[4], object.y2018);
  writer.writeDouble(offsets[5], object.y2019);
  writer.writeDouble(offsets[6], object.y2020);
  return writer.usedBytes;
}

TModel _tModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TModel(
    munCode: reader.readString(offsets[0]),
    y2015: reader.readDoubleOrNull(offsets[1]),
    y2016: reader.readDoubleOrNull(offsets[2]),
    y2017: reader.readDoubleOrNull(offsets[3]),
    y2018: reader.readDoubleOrNull(offsets[4]),
    y2019: reader.readDoubleOrNull(offsets[5]),
    y2020: reader.readDoubleOrNull(offsets[6]),
  );
  object.id = id;
  return object;
}

P _tModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
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
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _tModelSerializeWeb(IsarCollection<TModel> collection, TModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

TModel _tModelDeserializeWeb(IsarCollection<TModel> collection, Object jsObj) {
  /*final object = TModel(munCode: IsarNative.jsObjectGet(jsObj, r'munCode') ?? '',y2015: IsarNative.jsObjectGet(jsObj, r'y2015') ,y2016: IsarNative.jsObjectGet(jsObj, r'y2016') ,y2017: IsarNative.jsObjectGet(jsObj, r'y2017') ,y2018: IsarNative.jsObjectGet(jsObj, r'y2018') ,y2019: IsarNative.jsObjectGet(jsObj, r'y2019') ,y2020: IsarNative.jsObjectGet(jsObj, r'y2020') ,);object.id = IsarNative.jsObjectGet(jsObj, r'id') ?? (double.negativeInfinity as int);*/
  //return object;
  throw UnimplementedError();
}

P _tModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _tModelGetId(TModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tModelGetLinks(TModel object) {
  return [];
}

void _tModelAttach(IsarCollection<dynamic> col, Id id, TModel object) {
  object.id = id;
}

extension TModelQueryWhereSort on QueryBuilder<TModel, TModel, QWhere> {
  QueryBuilder<TModel, TModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TModelQueryWhere on QueryBuilder<TModel, TModel, QWhereClause> {
  QueryBuilder<TModel, TModel, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<TModel, TModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TModel, TModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TModel, TModel, QAfterWhereClause> idBetween(
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

extension TModelQueryFilter on QueryBuilder<TModel, TModel, QFilterCondition> {
  QueryBuilder<TModel, TModel, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2015',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2015',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2015',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2015',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2015',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2015Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2015',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2016',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2016',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2016',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2016',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2016',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2016Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2016',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2017',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2017',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2017',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2017',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2017',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2017Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2017',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2018',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2018',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2018',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2018',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2018',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2018Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2018',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2019',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2019',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2019Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2019',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y2020',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y2020',
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TModel, TModel, QAfterFilterCondition> y2020Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2020',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension TModelQueryObject on QueryBuilder<TModel, TModel, QFilterCondition> {}

extension TModelQueryLinks on QueryBuilder<TModel, TModel, QFilterCondition> {}

extension TModelQuerySortBy on QueryBuilder<TModel, TModel, QSortBy> {
  QueryBuilder<TModel, TModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2015() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2015', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2015Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2015', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2016() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2016', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2016Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2016', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2017() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2017', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2017Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2017', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2018() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2018', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2018Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2018', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2019() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2019', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2019Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2019', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2020() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2020', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> sortByY2020Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2020', Sort.desc);
    });
  }
}

extension TModelQuerySortThenBy on QueryBuilder<TModel, TModel, QSortThenBy> {
  QueryBuilder<TModel, TModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2015() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2015', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2015Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2015', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2016() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2016', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2016Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2016', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2017() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2017', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2017Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2017', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2018() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2018', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2018Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2018', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2019() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2019', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2019Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2019', Sort.desc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2020() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2020', Sort.asc);
    });
  }

  QueryBuilder<TModel, TModel, QAfterSortBy> thenByY2020Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'y2020', Sort.desc);
    });
  }
}

extension TModelQueryWhereDistinct on QueryBuilder<TModel, TModel, QDistinct> {
  QueryBuilder<TModel, TModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2015() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2015');
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2016() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2016');
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2017() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2017');
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2018() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2018');
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2019() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2019');
    });
  }

  QueryBuilder<TModel, TModel, QDistinct> distinctByY2020() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'y2020');
    });
  }
}

extension TModelQueryProperty on QueryBuilder<TModel, TModel, QQueryProperty> {
  QueryBuilder<TModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2015Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2015');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2016Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2016');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2017Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2017');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2018Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2018');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2019Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2019');
    });
  }

  QueryBuilder<TModel, double?, QQueryOperations> y2020Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'y2020');
    });
  }
}
