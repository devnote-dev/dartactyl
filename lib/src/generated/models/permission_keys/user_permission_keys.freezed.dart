// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/permission_keys/user_permission_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPermissionKeys _$UserPermissionKeysFromJson(Map<String, dynamic> json) {
  return _UserPermissionKeys.fromJson(json);
}

/// @nodoc
class _$UserPermissionKeysTearOff {
  const _$UserPermissionKeysTearOff();

  _UserPermissionKeys call(
      {required String create,
      required String read,
      required String update,
      required String delete}) {
    return _UserPermissionKeys(
      create: create,
      read: read,
      update: update,
      delete: delete,
    );
  }

  UserPermissionKeys fromJson(Map<String, Object?> json) {
    return UserPermissionKeys.fromJson(json);
  }
}

/// @nodoc
const $UserPermissionKeys = _$UserPermissionKeysTearOff();

/// @nodoc
mixin _$UserPermissionKeys {
  String get create => throw _privateConstructorUsedError;
  String get read => throw _privateConstructorUsedError;
  String get update => throw _privateConstructorUsedError;
  String get delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPermissionKeysCopyWith<UserPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPermissionKeysCopyWith<$Res> {
  factory $UserPermissionKeysCopyWith(
          UserPermissionKeys value, $Res Function(UserPermissionKeys) then) =
      _$UserPermissionKeysCopyWithImpl<$Res>;
  $Res call({String create, String read, String update, String delete});
}

/// @nodoc
class _$UserPermissionKeysCopyWithImpl<$Res>
    implements $UserPermissionKeysCopyWith<$Res> {
  _$UserPermissionKeysCopyWithImpl(this._value, this._then);

  final UserPermissionKeys _value;
  // ignore: unused_field
  final $Res Function(UserPermissionKeys) _then;

  @override
  $Res call({
    Object? create = freezed,
    Object? read = freezed,
    Object? update = freezed,
    Object? delete = freezed,
  }) {
    return _then(_value.copyWith(
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as String,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserPermissionKeysCopyWith<$Res>
    implements $UserPermissionKeysCopyWith<$Res> {
  factory _$UserPermissionKeysCopyWith(
          _UserPermissionKeys value, $Res Function(_UserPermissionKeys) then) =
      __$UserPermissionKeysCopyWithImpl<$Res>;
  @override
  $Res call({String create, String read, String update, String delete});
}

/// @nodoc
class __$UserPermissionKeysCopyWithImpl<$Res>
    extends _$UserPermissionKeysCopyWithImpl<$Res>
    implements _$UserPermissionKeysCopyWith<$Res> {
  __$UserPermissionKeysCopyWithImpl(
      _UserPermissionKeys _value, $Res Function(_UserPermissionKeys) _then)
      : super(_value, (v) => _then(v as _UserPermissionKeys));

  @override
  _UserPermissionKeys get _value => super._value as _UserPermissionKeys;

  @override
  $Res call({
    Object? create = freezed,
    Object? read = freezed,
    Object? update = freezed,
    Object? delete = freezed,
  }) {
    return _then(_UserPermissionKeys(
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as String,
      delete: delete == freezed
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPermissionKeys implements _UserPermissionKeys {
  _$_UserPermissionKeys(
      {required this.create,
      required this.read,
      required this.update,
      required this.delete});

  factory _$_UserPermissionKeys.fromJson(Map<String, dynamic> json) =>
      _$$_UserPermissionKeysFromJson(json);

  @override
  final String create;
  @override
  final String read;
  @override
  final String update;
  @override
  final String delete;

  @override
  String toString() {
    return 'UserPermissionKeys(create: $create, read: $read, update: $update, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserPermissionKeys &&
            const DeepCollectionEquality().equals(other.create, create) &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.update, update) &&
            const DeepCollectionEquality().equals(other.delete, delete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(create),
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(update),
      const DeepCollectionEquality().hash(delete));

  @JsonKey(ignore: true)
  @override
  _$UserPermissionKeysCopyWith<_UserPermissionKeys> get copyWith =>
      __$UserPermissionKeysCopyWithImpl<_UserPermissionKeys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPermissionKeysToJson(this);
  }
}

abstract class _UserPermissionKeys implements UserPermissionKeys {
  factory _UserPermissionKeys(
      {required String create,
      required String read,
      required String update,
      required String delete}) = _$_UserPermissionKeys;

  factory _UserPermissionKeys.fromJson(Map<String, dynamic> json) =
      _$_UserPermissionKeys.fromJson;

  @override
  String get create;
  @override
  String get read;
  @override
  String get update;
  @override
  String get delete;
  @override
  @JsonKey(ignore: true)
  _$UserPermissionKeysCopyWith<_UserPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
