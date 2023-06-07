// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStepsCollection on Isar {
  IsarCollection<Steps> get steps => this.collection();
}

const StepsSchema = CollectionSchema(
  name: r'Steps',
  id: -1719303918995197681,
  properties: {
    r'step1': PropertySchema(
      id: 0,
      name: r'step1',
      type: IsarType.string,
    ),
    r'step2': PropertySchema(
      id: 1,
      name: r'step2',
      type: IsarType.string,
    ),
    r'step3': PropertySchema(
      id: 2,
      name: r'step3',
      type: IsarType.string,
    ),
    r'step4': PropertySchema(
      id: 3,
      name: r'step4',
      type: IsarType.string,
    ),
    r'step5': PropertySchema(
      id: 4,
      name: r'step5',
      type: IsarType.string,
    ),
    r'step6': PropertySchema(
      id: 5,
      name: r'step6',
      type: IsarType.string,
    ),
    r'step7': PropertySchema(
      id: 6,
      name: r'step7',
      type: IsarType.string,
    ),
    r'step8': PropertySchema(
      id: 7,
      name: r'step8',
      type: IsarType.string,
    ),
    r'step9': PropertySchema(
      id: 8,
      name: r'step9',
      type: IsarType.string,
    )
  },
  estimateSize: _stepsEstimateSize,
  serialize: _stepsSerialize,
  deserialize: _stepsDeserialize,
  deserializeProp: _stepsDeserializeProp,
  idName: r'stepId',
  indexes: {},
  links: {
    r'meals': LinkSchema(
      id: 3690891927402183475,
      name: r'meals',
      target: r'Meal',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _stepsGetId,
  getLinks: _stepsGetLinks,
  attach: _stepsAttach,
  version: '3.1.0+1',
);

int _stepsEstimateSize(
  Steps object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.step1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step4;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step5;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step6;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step7;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step8;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.step9;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _stepsSerialize(
  Steps object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.step1);
  writer.writeString(offsets[1], object.step2);
  writer.writeString(offsets[2], object.step3);
  writer.writeString(offsets[3], object.step4);
  writer.writeString(offsets[4], object.step5);
  writer.writeString(offsets[5], object.step6);
  writer.writeString(offsets[6], object.step7);
  writer.writeString(offsets[7], object.step8);
  writer.writeString(offsets[8], object.step9);
}

Steps _stepsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Steps();
  object.step1 = reader.readStringOrNull(offsets[0]);
  object.step2 = reader.readStringOrNull(offsets[1]);
  object.step3 = reader.readStringOrNull(offsets[2]);
  object.step4 = reader.readStringOrNull(offsets[3]);
  object.step5 = reader.readStringOrNull(offsets[4]);
  object.step6 = reader.readStringOrNull(offsets[5]);
  object.step7 = reader.readStringOrNull(offsets[6]);
  object.step8 = reader.readStringOrNull(offsets[7]);
  object.step9 = reader.readStringOrNull(offsets[8]);
  object.stepId = id;
  return object;
}

P _stepsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _stepsGetId(Steps object) {
  return object.stepId;
}

List<IsarLinkBase<dynamic>> _stepsGetLinks(Steps object) {
  return [object.meals];
}

void _stepsAttach(IsarCollection<dynamic> col, Id id, Steps object) {
  object.stepId = id;
  object.meals.attach(col, col.isar.collection<Meal>(), r'meals', id);
}

extension StepsQueryWhereSort on QueryBuilder<Steps, Steps, QWhere> {
  QueryBuilder<Steps, Steps, QAfterWhere> anyStepId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StepsQueryWhere on QueryBuilder<Steps, Steps, QWhereClause> {
  QueryBuilder<Steps, Steps, QAfterWhereClause> stepIdEqualTo(Id stepId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: stepId,
        upper: stepId,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterWhereClause> stepIdNotEqualTo(Id stepId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: stepId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: stepId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: stepId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: stepId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Steps, Steps, QAfterWhereClause> stepIdGreaterThan(Id stepId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: stepId, includeLower: include),
      );
    });
  }

  QueryBuilder<Steps, Steps, QAfterWhereClause> stepIdLessThan(Id stepId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: stepId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Steps, Steps, QAfterWhereClause> stepIdBetween(
    Id lowerStepId,
    Id upperStepId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerStepId,
        includeLower: includeLower,
        upper: upperStepId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StepsQueryFilter on QueryBuilder<Steps, Steps, QFilterCondition> {
  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step1',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step1',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step1',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step1',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step2',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step2',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step2',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step2',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step3',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step3',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step3',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step3',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step4',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step4',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step4',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step4',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step5',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step5',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step5',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step5',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step5',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step6',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step6',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step6',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step6',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step6',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step6IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step6',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step7',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step7',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step7',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step7',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step7',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step7IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step7',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step8',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step8',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step8',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step8',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step8',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step8IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step8',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'step9',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'step9',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'step9',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9Contains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'step9',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9Matches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'step9',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'step9',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> step9IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'step9',
        value: '',
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> stepIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stepId',
        value: value,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> stepIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stepId',
        value: value,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> stepIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stepId',
        value: value,
      ));
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> stepIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stepId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StepsQueryObject on QueryBuilder<Steps, Steps, QFilterCondition> {}

extension StepsQueryLinks on QueryBuilder<Steps, Steps, QFilterCondition> {
  QueryBuilder<Steps, Steps, QAfterFilterCondition> meals(FilterQuery<Meal> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'meals');
    });
  }

  QueryBuilder<Steps, Steps, QAfterFilterCondition> mealsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meals', 0, true, 0, true);
    });
  }
}

extension StepsQuerySortBy on QueryBuilder<Steps, Steps, QSortBy> {
  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step1', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step1', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step2', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step2', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step3', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step3', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step4', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step4', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step5', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step5', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step6', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step6', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep7() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step7', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep7Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step7', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep8() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step8', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep8Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step8', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep9() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step9', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> sortByStep9Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step9', Sort.desc);
    });
  }
}

extension StepsQuerySortThenBy on QueryBuilder<Steps, Steps, QSortThenBy> {
  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step1', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step1', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step2', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step2', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step3', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step3', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step4', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step4', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step5', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step5', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step6', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step6', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep7() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step7', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep7Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step7', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep8() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step8', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep8Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step8', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep9() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step9', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStep9Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'step9', Sort.desc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStepId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stepId', Sort.asc);
    });
  }

  QueryBuilder<Steps, Steps, QAfterSortBy> thenByStepIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stepId', Sort.desc);
    });
  }
}

extension StepsQueryWhereDistinct on QueryBuilder<Steps, Steps, QDistinct> {
  QueryBuilder<Steps, Steps, QDistinct> distinctByStep1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step5', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep6(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step6', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep7(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step7', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep8(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step8', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Steps, Steps, QDistinct> distinctByStep9(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'step9', caseSensitive: caseSensitive);
    });
  }
}

extension StepsQueryProperty on QueryBuilder<Steps, Steps, QQueryProperty> {
  QueryBuilder<Steps, int, QQueryOperations> stepIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stepId');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step1');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step2');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step3');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step4');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step5');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step6Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step6');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step7Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step7');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step8Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step8');
    });
  }

  QueryBuilder<Steps, String?, QQueryOperations> step9Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'step9');
    });
  }
}
