// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  String? get message => throw _privateConstructorUsedError;
  String? get rule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call({String? message, String? rule});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? rule = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      rule: rule == freezed
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? rule});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, (v) => _then(v as _$_Content));

  @override
  _$_Content get _value => super._value as _$_Content;

  @override
  $Res call({
    Object? message = freezed,
    Object? rule = freezed,
  }) {
    return _then(_$_Content(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      rule: rule == freezed
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  _$_Content({this.message, this.rule});

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  final String? message;
  @override
  final String? rule;

  @override
  String toString() {
    return 'Content(message: $message, rule: $rule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.rule, rule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(rule));

  @JsonKey(ignore: true)
  @override
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(this);
  }
}

abstract class _Content implements Content {
  factory _Content({final String? message, final String? rule}) = _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get rule => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
