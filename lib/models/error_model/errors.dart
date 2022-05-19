import 'package:freezed_annotation/freezed_annotation.dart';

import 'content.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@freezed
class Errors with _$Errors {
  factory Errors({
    Content? content,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
