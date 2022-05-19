import 'package:portfolio/constants/strings.dart';
import 'package:data_repository/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'errors.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel extends ApiError with _$ErrorModel {
  factory ErrorModel({
    @Default(Strings.signupWriteup) String message,
    @Default(1) int code,
    Errors? errors,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
