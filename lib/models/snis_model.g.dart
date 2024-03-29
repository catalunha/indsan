// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snis_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSNISModelCollection on Isar {
  IsarCollection<SNISModel> get sNISModels => this.collection();
}

const SNISModelSchema = CollectionSchema(
  name: r'SNISModel',
  id: -8912510033638962985,
  properties: {
    r'AG006': PropertySchema(
      id: 0,
      name: r'AG006',
      type: IsarType.double,
    ),
    r'AG012': PropertySchema(
      id: 1,
      name: r'AG012',
      type: IsarType.double,
    ),
    r'AG024': PropertySchema(
      id: 2,
      name: r'AG024',
      type: IsarType.double,
    ),
    r'ES005': PropertySchema(
      id: 3,
      name: r'ES005',
      type: IsarType.double,
    ),
    r'ES006': PropertySchema(
      id: 4,
      name: r'ES006',
      type: IsarType.double,
    ),
    r'IN014_RS': PropertySchema(
      id: 5,
      name: r'IN014_RS',
      type: IsarType.double,
    ),
    r'IN022_AE': PropertySchema(
      id: 6,
      name: r'IN022_AE',
      type: IsarType.double,
    ),
    r'IN023_AE': PropertySchema(
      id: 7,
      name: r'IN023_AE',
      type: IsarType.double,
    ),
    r'IN024_AE': PropertySchema(
      id: 8,
      name: r'IN024_AE',
      type: IsarType.double,
    ),
    r'IN049_AE': PropertySchema(
      id: 9,
      name: r'IN049_AE',
      type: IsarType.double,
    ),
    r'POP': PropertySchema(
      id: 10,
      name: r'POP',
      type: IsarType.double,
    ),
    r'QD006': PropertySchema(
      id: 11,
      name: r'QD006',
      type: IsarType.double,
    ),
    r'QD007': PropertySchema(
      id: 12,
      name: r'QD007',
      type: IsarType.double,
    ),
    r'QD008': PropertySchema(
      id: 13,
      name: r'QD008',
      type: IsarType.double,
    ),
    r'QD009': PropertySchema(
      id: 14,
      name: r'QD009',
      type: IsarType.double,
    ),
    r'QD019': PropertySchema(
      id: 15,
      name: r'QD019',
      type: IsarType.double,
    ),
    r'QD020': PropertySchema(
      id: 16,
      name: r'QD020',
      type: IsarType.double,
    ),
    r'QD026': PropertySchema(
      id: 17,
      name: r'QD026',
      type: IsarType.double,
    ),
    r'QD027': PropertySchema(
      id: 18,
      name: r'QD027',
      type: IsarType.double,
    ),
    r'QD028': PropertySchema(
      id: 19,
      name: r'QD028',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 20,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'munCode': PropertySchema(
      id: 21,
      name: r'munCode',
      type: IsarType.string,
    ),
    r'year': PropertySchema(
      id: 22,
      name: r'year',
      type: IsarType.long,
    )
  },
  estimateSize: _sNISModelEstimateSize,
  serialize: _sNISModelSerialize,
  deserialize: _sNISModelDeserialize,
  deserializeProp: _sNISModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sNISModelGetId,
  getLinks: _sNISModelGetLinks,
  attach: _sNISModelAttach,
  version: '3.0.5',
);

int _sNISModelEstimateSize(
  SNISModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.munCode.length * 3;
  return bytesCount;
}

void _sNISModelSerialize(
  SNISModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.AG006);
  writer.writeDouble(offsets[1], object.AG012);
  writer.writeDouble(offsets[2], object.AG024);
  writer.writeDouble(offsets[3], object.ES005);
  writer.writeDouble(offsets[4], object.ES006);
  writer.writeDouble(offsets[5], object.IN014_RS);
  writer.writeDouble(offsets[6], object.IN022_AE);
  writer.writeDouble(offsets[7], object.IN023_AE);
  writer.writeDouble(offsets[8], object.IN024_AE);
  writer.writeDouble(offsets[9], object.IN049_AE);
  writer.writeDouble(offsets[10], object.POP);
  writer.writeDouble(offsets[11], object.QD006);
  writer.writeDouble(offsets[12], object.QD007);
  writer.writeDouble(offsets[13], object.QD008);
  writer.writeDouble(offsets[14], object.QD009);
  writer.writeDouble(offsets[15], object.QD019);
  writer.writeDouble(offsets[16], object.QD020);
  writer.writeDouble(offsets[17], object.QD026);
  writer.writeDouble(offsets[18], object.QD027);
  writer.writeDouble(offsets[19], object.QD028);
  writer.writeLong(offsets[20], object.hashCode);
  writer.writeString(offsets[21], object.munCode);
  writer.writeLong(offsets[22], object.year);
}

SNISModel _sNISModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SNISModel(
    AG006: reader.readDoubleOrNull(offsets[0]),
    AG012: reader.readDoubleOrNull(offsets[1]),
    AG024: reader.readDoubleOrNull(offsets[2]),
    ES005: reader.readDoubleOrNull(offsets[3]),
    ES006: reader.readDoubleOrNull(offsets[4]),
    IN014_RS: reader.readDoubleOrNull(offsets[5]),
    IN022_AE: reader.readDoubleOrNull(offsets[6]),
    IN023_AE: reader.readDoubleOrNull(offsets[7]),
    IN024_AE: reader.readDoubleOrNull(offsets[8]),
    IN049_AE: reader.readDoubleOrNull(offsets[9]),
    POP: reader.readDoubleOrNull(offsets[10]),
    QD006: reader.readDoubleOrNull(offsets[11]),
    QD007: reader.readDoubleOrNull(offsets[12]),
    QD008: reader.readDoubleOrNull(offsets[13]),
    QD009: reader.readDoubleOrNull(offsets[14]),
    QD019: reader.readDoubleOrNull(offsets[15]),
    QD020: reader.readDoubleOrNull(offsets[16]),
    QD026: reader.readDoubleOrNull(offsets[17]),
    QD027: reader.readDoubleOrNull(offsets[18]),
    QD028: reader.readDoubleOrNull(offsets[19]),
    munCode: reader.readString(offsets[21]),
    year: reader.readLong(offsets[22]),
  );
  object.id = id;
  return object;
}

P _sNISModelDeserializeProp<P>(
  IsarReader reader,
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readDoubleOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readLong(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sNISModelGetId(SNISModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sNISModelGetLinks(SNISModel object) {
  return [];
}

void _sNISModelAttach(IsarCollection<dynamic> col, Id id, SNISModel object) {
  object.id = id;
}

extension SNISModelQueryWhereSort
    on QueryBuilder<SNISModel, SNISModel, QWhere> {
  QueryBuilder<SNISModel, SNISModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SNISModelQueryWhere
    on QueryBuilder<SNISModel, SNISModel, QWhereClause> {
  QueryBuilder<SNISModel, SNISModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SNISModel, SNISModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
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

extension SNISModelQueryFilter
    on QueryBuilder<SNISModel, SNISModel, QFilterCondition> {
  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'AG006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'AG006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'AG006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'AG006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'AG006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG006Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'AG006',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'AG012',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'AG012',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'AG012',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'AG012',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'AG012',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG012Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'AG012',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'AG024',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'AG024',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'AG024',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'AG024',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'AG024',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> aG024Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'AG024',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ES005',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ES005',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ES005',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ES005',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ES005',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS005Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ES005',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ES006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ES006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ES006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ES006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ES006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> eS006Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ES006',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN014_RSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IN014_RS',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      iN014_RSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IN014_RS',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN014_RSEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IN014_RS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN014_RSGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IN014_RS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN014_RSLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IN014_RS',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN014_RSBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IN014_RS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN022_AEIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IN022_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      iN022_AEIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IN022_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN022_AEEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IN022_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN022_AEGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IN022_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN022_AELessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IN022_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN022_AEBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IN022_AE',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN023_AEIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IN023_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      iN023_AEIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IN023_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN023_AEEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IN023_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN023_AEGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IN023_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN023_AELessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IN023_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN023_AEBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IN023_AE',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN024_AEIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IN024_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      iN024_AEIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IN024_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN024_AEEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IN024_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN024_AEGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IN024_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN024_AELessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IN024_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN024_AEBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IN024_AE',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN049_AEIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'IN049_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      iN049_AEIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'IN049_AE',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN049_AEEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'IN049_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN049_AEGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'IN049_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN049_AELessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'IN049_AE',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> iN049_AEBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'IN049_AE',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'POP',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'POP',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'POP',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'POP',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'POP',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> pOPBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'POP',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD006',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD006',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD006Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD006',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD007',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD007',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD007',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD007',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD007',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD007Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD007',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD008',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD008',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD008',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD008',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD008',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD008Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD008',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD009',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD009',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD009',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD009',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD009',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD009Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD009',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD019',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD019',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD019',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD019Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD019',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD020',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD020',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD020',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD020Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD020',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD026',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD026',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD026',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD026',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD026',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD026Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD026',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD027',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD027',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD027',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD027',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD027',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD027Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD027',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'QD028',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'QD028',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'QD028',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'QD028',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'QD028',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> qD028Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'QD028',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeEqualTo(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeGreaterThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeLessThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeBetween(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeStartsWith(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeEndsWith(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeContains(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeMatches(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> munCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition>
      munCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'munCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> yearEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'year',
        value: value,
      ));
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> yearGreaterThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> yearLessThan(
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

  QueryBuilder<SNISModel, SNISModel, QAfterFilterCondition> yearBetween(
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

extension SNISModelQueryObject
    on QueryBuilder<SNISModel, SNISModel, QFilterCondition> {}

extension SNISModelQueryLinks
    on QueryBuilder<SNISModel, SNISModel, QFilterCondition> {}

extension SNISModelQuerySortBy on QueryBuilder<SNISModel, SNISModel, QSortBy> {
  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG012() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG012', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG012Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG012', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG024() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG024', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByAG024Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG024', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByES005() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES005', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByES005Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES005', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByES006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByES006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN014_RS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN014_RS', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN014_RSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN014_RS', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN022_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN022_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN022_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN022_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN023_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN023_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN023_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN023_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN024_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN024_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN024_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN024_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN049_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN049_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByIN049_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN049_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByPOP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'POP', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByPOPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'POP', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD007() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD007', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD007Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD007', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD008() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD008', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD008Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD008', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD009() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD009', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD009Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD009', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD019() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD019', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD019Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD019', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD020() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD020', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD020Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD020', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD026() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD026', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD026Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD026', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD027() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD027', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD027Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD027', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD028() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD028', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByQD028Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD028', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> sortByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension SNISModelQuerySortThenBy
    on QueryBuilder<SNISModel, SNISModel, QSortThenBy> {
  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG012() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG012', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG012Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG012', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG024() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG024', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByAG024Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'AG024', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByES005() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES005', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByES005Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES005', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByES006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByES006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ES006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN014_RS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN014_RS', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN014_RSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN014_RS', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN022_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN022_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN022_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN022_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN023_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN023_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN023_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN023_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN024_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN024_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN024_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN024_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN049_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN049_AE', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIN049_AEDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'IN049_AE', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByPOP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'POP', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByPOPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'POP', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD006() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD006', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD006Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD006', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD007() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD007', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD007Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD007', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD008() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD008', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD008Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD008', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD009() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD009', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD009Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD009', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD019() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD019', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD019Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD019', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD020() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD020', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD020Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD020', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD026() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD026', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD026Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD026', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD027() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD027', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD027Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD027', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD028() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD028', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByQD028Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'QD028', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByMunCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByMunCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'munCode', Sort.desc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.asc);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QAfterSortBy> thenByYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'year', Sort.desc);
    });
  }
}

extension SNISModelQueryWhereDistinct
    on QueryBuilder<SNISModel, SNISModel, QDistinct> {
  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByAG006() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'AG006');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByAG012() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'AG012');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByAG024() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'AG024');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByES005() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ES005');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByES006() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ES006');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByIN014_RS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IN014_RS');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByIN022_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IN022_AE');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByIN023_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IN023_AE');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByIN024_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IN024_AE');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByIN049_AE() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'IN049_AE');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByPOP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'POP');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD006() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD006');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD007() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD007');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD008() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD008');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD009() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD009');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD019() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD019');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD020() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD020');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD026() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD026');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD027() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD027');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByQD028() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'QD028');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByMunCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'munCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SNISModel, SNISModel, QDistinct> distinctByYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'year');
    });
  }
}

extension SNISModelQueryProperty
    on QueryBuilder<SNISModel, SNISModel, QQueryProperty> {
  QueryBuilder<SNISModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> AG006Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'AG006');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> AG012Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'AG012');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> AG024Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'AG024');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> ES005Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ES005');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> ES006Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ES006');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> IN014_RSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IN014_RS');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> IN022_AEProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IN022_AE');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> IN023_AEProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IN023_AE');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> IN024_AEProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IN024_AE');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> IN049_AEProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'IN049_AE');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> POPProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'POP');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD006Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD006');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD007Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD007');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD008Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD008');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD009Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD009');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD019Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD019');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD020Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD020');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD026Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD026');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD027Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD027');
    });
  }

  QueryBuilder<SNISModel, double?, QQueryOperations> QD028Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'QD028');
    });
  }

  QueryBuilder<SNISModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<SNISModel, String, QQueryOperations> munCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'munCode');
    });
  }

  QueryBuilder<SNISModel, int, QQueryOperations> yearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'year');
    });
  }
}
