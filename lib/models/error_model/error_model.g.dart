// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorModel _$$_ErrorModelFromJson(Map<String, dynamic> json) =>
    _$_ErrorModel(
      message: json['message'] as String? ?? Strings.defaultErrorMessage,
      code: json['code'] as int? ?? 1,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorModelToJson(_$_ErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'errors': instance.errors,
    };
