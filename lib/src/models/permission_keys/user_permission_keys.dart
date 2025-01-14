import 'package:dartactyl/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/models/permission_keys/user_permission_keys.freezed.dart';
part '../../generated/models/permission_keys/user_permission_keys.g.dart';

@freezed
class UserPermissionKeys with SerializableMixin, _$UserPermissionKeys {
  const factory UserPermissionKeys({
    required String create,
    required String read,
    required String update,
    required String delete,
  }) = _UserPermissionKeys;

  factory UserPermissionKeys.fromJson(JsonMap json) =>
      _$UserPermissionKeysFromJson(json);

  @override
  JsonMap toJson();
}
