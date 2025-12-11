// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSubcategoryModelCollection on Isar {
  IsarCollection<SubcategoryModel> get subcategoryModels => this.collection();
}

const SubcategoryModelSchema = CollectionSchema(
  name: r'SubcategoryModel',
  id: -4386974431325884191,
  properties: {
    r'categoryId': PropertySchema(
      id: 0,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'dateCreated': PropertySchema(
      id: 1,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'dateModified': PropertySchema(
      id: 2,
      name: r'dateModified',
      type: IsarType.dateTime,
    ),
    r'sortIndex': PropertySchema(
      id: 3,
      name: r'sortIndex',
      type: IsarType.long,
    ),
    r'subcategoryId': PropertySchema(
      id: 4,
      name: r'subcategoryId',
      type: IsarType.string,
    ),
    r'subcategoryName': PropertySchema(
      id: 5,
      name: r'subcategoryName',
      type: IsarType.string,
    ),
  },

  estimateSize: _subcategoryModelEstimateSize,
  serialize: _subcategoryModelSerialize,
  deserialize: _subcategoryModelDeserialize,
  deserializeProp: _subcategoryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _subcategoryModelGetId,
  getLinks: _subcategoryModelGetLinks,
  attach: _subcategoryModelAttach,
  version: '3.3.0',
);

int _subcategoryModelEstimateSize(
  SubcategoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoryId.length * 3;
  bytesCount += 3 + object.subcategoryId.length * 3;
  bytesCount += 3 + object.subcategoryName.length * 3;
  return bytesCount;
}

void _subcategoryModelSerialize(
  SubcategoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoryId);
  writer.writeDateTime(offsets[1], object.dateCreated);
  writer.writeDateTime(offsets[2], object.dateModified);
  writer.writeLong(offsets[3], object.sortIndex);
  writer.writeString(offsets[4], object.subcategoryId);
  writer.writeString(offsets[5], object.subcategoryName);
}

SubcategoryModel _subcategoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SubcategoryModel();
  object.categoryId = reader.readString(offsets[0]);
  object.dateCreated = reader.readDateTime(offsets[1]);
  object.dateModified = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.sortIndex = reader.readLongOrNull(offsets[3]);
  object.subcategoryId = reader.readString(offsets[4]);
  object.subcategoryName = reader.readString(offsets[5]);
  return object;
}

P _subcategoryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _subcategoryModelGetId(SubcategoryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _subcategoryModelGetLinks(SubcategoryModel object) {
  return [];
}

void _subcategoryModelAttach(
  IsarCollection<dynamic> col,
  Id id,
  SubcategoryModel object,
) {
  object.id = id;
}

extension SubcategoryModelQueryWhereSort
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QWhere> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SubcategoryModelQueryWhere
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QWhereClause> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhereClause>
  idNotEqualTo(Id id) {
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

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension SubcategoryModelQueryFilter
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QFilterCondition> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'categoryId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'categoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'categoryId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'categoryId', value: ''),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'categoryId', value: ''),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'dateCreated', value: value),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateCreatedGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'dateCreated',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateCreatedLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'dateCreated',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateCreatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'dateCreated',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'dateModified'),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'dateModified'),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'dateModified', value: value),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'dateModified',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'dateModified',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  dateModifiedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'dateModified',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'sortIndex'),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'sortIndex'),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'sortIndex', value: value),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'sortIndex',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'sortIndex',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  sortIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'sortIndex',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subcategoryId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subcategoryId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subcategoryId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subcategoryId', value: ''),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subcategoryId', value: ''),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subcategoryName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subcategoryName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subcategoryName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subcategoryName', value: ''),
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterFilterCondition>
  subcategoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subcategoryName', value: ''),
      );
    });
  }
}

extension SubcategoryModelQueryObject
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QFilterCondition> {}

extension SubcategoryModelQueryLinks
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QFilterCondition> {}

extension SubcategoryModelQuerySortBy
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QSortBy> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySortIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortIndex', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySortIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortIndex', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySubcategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryId', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySubcategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryId', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySubcategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryName', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  sortBySubcategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryName', Sort.desc);
    });
  }
}

extension SubcategoryModelQuerySortThenBy
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QSortThenBy> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySortIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortIndex', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySortIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortIndex', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySubcategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryId', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySubcategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryId', Sort.desc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySubcategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryName', Sort.asc);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QAfterSortBy>
  thenBySubcategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subcategoryName', Sort.desc);
    });
  }
}

extension SubcategoryModelQueryWhereDistinct
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct> {
  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctByCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModified');
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctBySortIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortIndex');
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctBySubcategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'subcategoryId',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SubcategoryModel, SubcategoryModel, QDistinct>
  distinctBySubcategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'subcategoryName',
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension SubcategoryModelQueryProperty
    on QueryBuilder<SubcategoryModel, SubcategoryModel, QQueryProperty> {
  QueryBuilder<SubcategoryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SubcategoryModel, String, QQueryOperations>
  categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<SubcategoryModel, DateTime, QQueryOperations>
  dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<SubcategoryModel, DateTime?, QQueryOperations>
  dateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModified');
    });
  }

  QueryBuilder<SubcategoryModel, int?, QQueryOperations> sortIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortIndex');
    });
  }

  QueryBuilder<SubcategoryModel, String, QQueryOperations>
  subcategoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subcategoryId');
    });
  }

  QueryBuilder<SubcategoryModel, String, QQueryOperations>
  subcategoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subcategoryName');
    });
  }
}
