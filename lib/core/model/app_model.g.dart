// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppModelCollection on Isar {
  IsarCollection<AppModel> get appModels => this.collection();
}

const AppModelSchema = CollectionSchema(
  name: r'AppModel',
  id: -5523004767656646549,
  properties: {
    r'isDefaultAccountGroupInitialized': PropertySchema(
      id: 0,
      name: r'isDefaultAccountGroupInitialized',
      type: IsarType.bool,
    )
  },
  estimateSize: _appModelEstimateSize,
  serialize: _appModelSerialize,
  deserialize: _appModelDeserialize,
  deserializeProp: _appModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appModelGetId,
  getLinks: _appModelGetLinks,
  attach: _appModelAttach,
  version: '3.1.8',
);

int _appModelEstimateSize(
  AppModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _appModelSerialize(
  AppModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isDefaultAccountGroupInitialized);
}

AppModel _appModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppModel(
    id: id,
    isDefaultAccountGroupInitialized: reader.readBoolOrNull(offsets[0]),
  );
  return object;
}

P _appModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appModelGetId(AppModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appModelGetLinks(AppModel object) {
  return [];
}

void _appModelAttach(IsarCollection<dynamic> col, Id id, AppModel object) {}

extension AppModelQueryWhereSort on QueryBuilder<AppModel, AppModel, QWhere> {
  QueryBuilder<AppModel, AppModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppModelQueryWhere on QueryBuilder<AppModel, AppModel, QWhereClause> {
  QueryBuilder<AppModel, AppModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AppModel, AppModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterWhereClause> idBetween(
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

extension AppModelQueryFilter
    on QueryBuilder<AppModel, AppModel, QFilterCondition> {
  QueryBuilder<AppModel, AppModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition>
      isDefaultAccountGroupInitializedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDefaultAccountGroupInitialized',
      ));
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition>
      isDefaultAccountGroupInitializedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDefaultAccountGroupInitialized',
      ));
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterFilterCondition>
      isDefaultAccountGroupInitializedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefaultAccountGroupInitialized',
        value: value,
      ));
    });
  }
}

extension AppModelQueryObject
    on QueryBuilder<AppModel, AppModel, QFilterCondition> {}

extension AppModelQueryLinks
    on QueryBuilder<AppModel, AppModel, QFilterCondition> {}

extension AppModelQuerySortBy on QueryBuilder<AppModel, AppModel, QSortBy> {
  QueryBuilder<AppModel, AppModel, QAfterSortBy>
      sortByIsDefaultAccountGroupInitialized() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefaultAccountGroupInitialized', Sort.asc);
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterSortBy>
      sortByIsDefaultAccountGroupInitializedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefaultAccountGroupInitialized', Sort.desc);
    });
  }
}

extension AppModelQuerySortThenBy
    on QueryBuilder<AppModel, AppModel, QSortThenBy> {
  QueryBuilder<AppModel, AppModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterSortBy>
      thenByIsDefaultAccountGroupInitialized() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefaultAccountGroupInitialized', Sort.asc);
    });
  }

  QueryBuilder<AppModel, AppModel, QAfterSortBy>
      thenByIsDefaultAccountGroupInitializedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefaultAccountGroupInitialized', Sort.desc);
    });
  }
}

extension AppModelQueryWhereDistinct
    on QueryBuilder<AppModel, AppModel, QDistinct> {
  QueryBuilder<AppModel, AppModel, QDistinct>
      distinctByIsDefaultAccountGroupInitialized() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDefaultAccountGroupInitialized');
    });
  }
}

extension AppModelQueryProperty
    on QueryBuilder<AppModel, AppModel, QQueryProperty> {
  QueryBuilder<AppModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppModel, bool?, QQueryOperations>
      isDefaultAccountGroupInitializedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDefaultAccountGroupInitialized');
    });
  }
}
