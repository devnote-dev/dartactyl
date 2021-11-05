import 'package:json_annotation/json_annotation.dart';

import 'ptero_error_meta.dart';

part 'ptero_error.g.dart';

@JsonSerializable()
class PteroError {
  final PteroErrorCode code;
  final String status;
  final String detail;
  final PteroErrorMeta? meta;

  int? get statusCode => int.tryParse(status);

  PteroError({
    required this.code,
    required this.status,
    required this.detail,
    this.meta,
  });

  factory PteroError.fromJson(Map<String, dynamic> json) =>
      _$PteroErrorFromJson(json);

  Map<String, dynamic> toJson() => _$PteroErrorToJson(this);

  @override
  String toString() {
    return 'PteroError{code: $code, status: $status, detail: $detail, meta: $meta}';
  }
}

enum PteroErrorCode {
  // ignore: constant_identifier_names
  TwoFactorAuthenticationTokenInvalid,
  // ignore: constant_identifier_names
  BadRequestHttpException,
  email,
  // ignore: constant_identifier_names
  InvalidPasswordProvidedException,
  // ignore: constant_identifier_names
  NotFoundHttpException,
  // ignore: constant_identifier_names
  AccessDeniedHttpException,
  // ignore: constant_identifier_names
  HttpException,
  // ignore: constant_identifier_names
  DisplayException,
}