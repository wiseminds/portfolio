// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get pages => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get chunkCount => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res>;
  $Res call(
      {int pages,
      int total,
      int page,
      int chunkCount,
      int limit,
      String? order,
      String? query});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  final Pagination _value;
  // ignore: unused_field
  final $Res Function(Pagination) _then;

  @override
  $Res call({
    Object? pages = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? chunkCount = freezed,
    Object? limit = freezed,
    Object? order = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      chunkCount: chunkCount == freezed
          ? _value.chunkCount
          : chunkCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination value, $Res Function(_$_Pagination) then) =
      __$$_PaginationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pages,
      int total,
      int page,
      int chunkCount,
      int limit,
      String? order,
      String? query});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<$Res> extends _$PaginationCopyWithImpl<$Res>
    implements _$$_PaginationCopyWith<$Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination _value, $Res Function(_$_Pagination) _then)
      : super(_value, (v) => _then(v as _$_Pagination));

  @override
  _$_Pagination get _value => super._value as _$_Pagination;

  @override
  $Res call({
    Object? pages = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? chunkCount = freezed,
    Object? limit = freezed,
    Object? order = freezed,
    Object? query = freezed,
  }) {
    return _then(_$_Pagination(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      chunkCount: chunkCount == freezed
          ? _value.chunkCount
          : chunkCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pagination implements _Pagination {
  _$_Pagination(
      {this.pages = 1,
      this.total = 0,
      this.page = 1,
      this.chunkCount = 10,
      this.limit = 10,
      this.order,
      this.query});

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationFromJson(json);

  @override
  @JsonKey()
  final int pages;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int chunkCount;
  @override
  @JsonKey()
  final int limit;
  @override
  final String? order;
  @override
  final String? query;

  @override
  String toString() {
    return 'Pagination(pages: $pages, total: $total, page: $page, chunkCount: $chunkCount, limit: $limit, order: $order, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.chunkCount, chunkCount) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(chunkCount),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      __$$_PaginationCopyWithImpl<_$_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationToJson(this);
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {final int pages,
      final int total,
      final int page,
      final int chunkCount,
      final int limit,
      final String? order,
      final String? query}) = _$_Pagination;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  int get pages => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get chunkCount => throw _privateConstructorUsedError;
  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  String? get order => throw _privateConstructorUsedError;
  @override
  String? get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}
