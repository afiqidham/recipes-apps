// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIngredientCollection on Isar {
  IsarCollection<Ingredient> get ingredients => this.collection();
}

const IngredientSchema = CollectionSchema(
  name: r'Ingredient',
  id: 800151778681338436,
  properties: {
    r'ingredient1': PropertySchema(
      id: 0,
      name: r'ingredient1',
      type: IsarType.string,
    ),
    r'ingredient2': PropertySchema(
      id: 1,
      name: r'ingredient2',
      type: IsarType.string,
    ),
    r'ingredient3': PropertySchema(
      id: 2,
      name: r'ingredient3',
      type: IsarType.string,
    ),
    r'ingredient4': PropertySchema(
      id: 3,
      name: r'ingredient4',
      type: IsarType.string,
    ),
    r'ingredient5': PropertySchema(
      id: 4,
      name: r'ingredient5',
      type: IsarType.string,
    ),
    r'ingredient6': PropertySchema(
      id: 5,
      name: r'ingredient6',
      type: IsarType.string,
    ),
    r'ingredient7': PropertySchema(
      id: 6,
      name: r'ingredient7',
      type: IsarType.string,
    ),
    r'ingredient8': PropertySchema(
      id: 7,
      name: r'ingredient8',
      type: IsarType.string,
    )
  },
  estimateSize: _ingredientEstimateSize,
  serialize: _ingredientSerialize,
  deserialize: _ingredientDeserialize,
  deserializeProp: _ingredientDeserializeProp,
  idName: r'ingredientId',
  indexes: {},
  links: {
    r'meals': LinkSchema(
      id: -305717420477823337,
      name: r'meals',
      target: r'Meal',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _ingredientGetId,
  getLinks: _ingredientGetLinks,
  attach: _ingredientAttach,
  version: '3.1.0+1',
);

int _ingredientEstimateSize(
  Ingredient object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ingredient1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient4;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient5;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient6;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient7;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ingredient8;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _ingredientSerialize(
  Ingredient object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.ingredient1);
  writer.writeString(offsets[1], object.ingredient2);
  writer.writeString(offsets[2], object.ingredient3);
  writer.writeString(offsets[3], object.ingredient4);
  writer.writeString(offsets[4], object.ingredient5);
  writer.writeString(offsets[5], object.ingredient6);
  writer.writeString(offsets[6], object.ingredient7);
  writer.writeString(offsets[7], object.ingredient8);
}

Ingredient _ingredientDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Ingredient(
    ingredient1: reader.readStringOrNull(offsets[0]),
    ingredient2: reader.readStringOrNull(offsets[1]),
    ingredient3: reader.readStringOrNull(offsets[2]),
    ingredient4: reader.readStringOrNull(offsets[3]),
    ingredient5: reader.readStringOrNull(offsets[4]),
    ingredient6: reader.readStringOrNull(offsets[5]),
    ingredient7: reader.readStringOrNull(offsets[6]),
    ingredient8: reader.readStringOrNull(offsets[7]),
  );
  object.ingredientId = id;
  return object;
}

P _ingredientDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ingredientGetId(Ingredient object) {
  return object.ingredientId;
}

List<IsarLinkBase<dynamic>> _ingredientGetLinks(Ingredient object) {
  return [object.meals];
}

void _ingredientAttach(IsarCollection<dynamic> col, Id id, Ingredient object) {
  object.ingredientId = id;
  object.meals.attach(col, col.isar.collection<Meal>(), r'meals', id);
}

extension IngredientQueryWhereSort
    on QueryBuilder<Ingredient, Ingredient, QWhere> {
  QueryBuilder<Ingredient, Ingredient, QAfterWhere> anyIngredientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IngredientQueryWhere
    on QueryBuilder<Ingredient, Ingredient, QWhereClause> {
  QueryBuilder<Ingredient, Ingredient, QAfterWhereClause> ingredientIdEqualTo(
      Id ingredientId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: ingredientId,
        upper: ingredientId,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterWhereClause>
      ingredientIdNotEqualTo(Id ingredientId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: ingredientId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: ingredientId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: ingredientId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: ingredientId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterWhereClause>
      ingredientIdGreaterThan(Id ingredientId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: ingredientId, includeLower: include),
      );
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterWhereClause> ingredientIdLessThan(
      Id ingredientId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: ingredientId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterWhereClause> ingredientIdBetween(
    Id lowerIngredientId,
    Id upperIngredientId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIngredientId,
        includeLower: includeLower,
        upper: upperIngredientId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IngredientQueryFilter
    on QueryBuilder<Ingredient, Ingredient, QFilterCondition> {
  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient1',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient1',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient1',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient1',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient2',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient2',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient2',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient2',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient3',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient3',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient3',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient3',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient4',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient4',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient4',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient4',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient5',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient5',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient5',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient5',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient5',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient6',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient6',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient6',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient6',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient6',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient6',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient6IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient6',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient7',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient7',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient7',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient7',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient7',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient7',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient7IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient7',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ingredient8',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ingredient8',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredient8',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredient8',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredient8',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredient8',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredient8IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredient8',
        value: '',
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredientIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredientIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredientIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientId',
        value: value,
      ));
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition>
      ingredientIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IngredientQueryObject
    on QueryBuilder<Ingredient, Ingredient, QFilterCondition> {}

extension IngredientQueryLinks
    on QueryBuilder<Ingredient, Ingredient, QFilterCondition> {
  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition> meals(
      FilterQuery<Meal> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'meals');
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterFilterCondition> mealsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meals', 0, true, 0, true);
    });
  }
}

extension IngredientQuerySortBy
    on QueryBuilder<Ingredient, Ingredient, QSortBy> {
  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient1', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient1', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient2', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient2', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient3', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient3', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient4', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient4', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient5', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient5', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient6', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient6', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient7() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient7', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient7Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient7', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient8() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient8', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> sortByIngredient8Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient8', Sort.desc);
    });
  }
}

extension IngredientQuerySortThenBy
    on QueryBuilder<Ingredient, Ingredient, QSortThenBy> {
  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient1', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient1', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient2', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient2', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient3', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient3', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient4', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient4', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient5', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient5', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient6', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient6', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient7() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient7', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient7Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient7', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient8() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient8', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredient8Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredient8', Sort.desc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientId', Sort.asc);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QAfterSortBy> thenByIngredientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ingredientId', Sort.desc);
    });
  }
}

extension IngredientQueryWhereDistinct
    on QueryBuilder<Ingredient, Ingredient, QDistinct> {
  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient5', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient6(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient6', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient7(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient7', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ingredient, Ingredient, QDistinct> distinctByIngredient8(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredient8', caseSensitive: caseSensitive);
    });
  }
}

extension IngredientQueryProperty
    on QueryBuilder<Ingredient, Ingredient, QQueryProperty> {
  QueryBuilder<Ingredient, int, QQueryOperations> ingredientIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientId');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient1');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient2');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient3');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient4');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient5');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient6Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient6');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient7Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient7');
    });
  }

  QueryBuilder<Ingredient, String?, QQueryOperations> ingredient8Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredient8');
    });
  }
}
