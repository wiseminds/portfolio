// typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

import 'package:portfolio/data/interceptors/json_interceptor.dart';
import 'package:portfolio/models/pagination/pagination.dart';
import 'error_model/error_model.dart';

class Models {
  static Map<Type, JsonFactory> factories = {
    ErrorModel: (json) => ErrorModel.fromJson(json),
    Pagination: (json) => Pagination.fromJson(json),
  };
}
