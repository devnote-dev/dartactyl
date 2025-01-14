import 'package:dio/dio.dart';

/// Remove any instance of null_resource, which looks like this:
/// ```json
/// {
///   "object": "null_resource",
///   "attributes": null
/// }
/// ```
/// This is done because it breaks serialization anywhere it appears.
class RemoveNullResourcesInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.data = _removeNullResource(response.data);
    handler.next(response);
  }

  // remove any instance of null_resource, which looks like this:
  //  {
  //   "object": "null_resource",
  //   "attributes": null
  // }
  dynamic _removeNullResource(dynamic json) {
    if (json is Map<String, dynamic>) {
      if (json['object'] == 'null_resource') return null;
      return json
          .map((key, value) => MapEntry(key, _removeNullResource(value)));
    }
    if (json is List) {
      return json.map((e) => _removeNullResource(e)).toList();
    }
    return json;
  }
}
