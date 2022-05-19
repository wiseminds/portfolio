// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorModel {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res>;
  $Res call({String message, int code, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res> implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel _value;
  // ignore: unused_field
  final $Res Function(ErrorModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
    ));
  }

  @override
  $ErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$$_ErrorModelCopyWith<$Res>
    implements $ErrorModelCopyWith<$Res> {
  factory _$$_ErrorModelCopyWith(
          _$_ErrorModel value, $Res Function(_$_ErrorModel) then) =
      __$$_ErrorModelCopyWithImpl<$Res>;
  @override
  $Res call({String message, int code, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_ErrorModelCopyWithImpl<$Res> extends _$ErrorModelCopyWithImpl<$Res>
    implements _$$_ErrorModelCopyWith<$Res> {
  __$$_ErrorModelCopyWithImpl(
      _$_ErrorModel _value, $Res Function(_$_ErrorModel) _then)
      : super(_value, (v) => _then(v as _$_ErrorModel));

  @override
  _$_ErrorModel get _value => super._value as _$_ErrorModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_ErrorModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel implements _ErrorModel {
  _$_ErrorModel(
      {this.message = Strings.signupWriteup, this.code = 1, this.errors});

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int code;
  @override
  final Errors? errors;

  @override
  String toString() {
    return 'ErrorModel(message: $message, code: $code, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorModelCopyWith<_$_ErrorModel> get copyWith =>
      __$$_ErrorModelCopyWithImpl<_$_ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorModelToJson(this);
  }
}

abstract class _ErrorModel implements ErrorModel {
  factory _ErrorModel(
      {final String message,
      final int code,
      final Errors? errors}) = _$_ErrorModel;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorModel.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  Errors? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorModelCopyWith<_$_ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
