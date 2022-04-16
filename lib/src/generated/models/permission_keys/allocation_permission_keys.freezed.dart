// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/permission_keys/allocation_permission_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllocationPermissionKeys _$AllocationPermissionKeysFromJson(
    Map<String, dynamic> json) {
  return _AllocationPermissionKeys.fromJson(json);
}

/// @nodoc
class _$AllocationPermissionKeysTearOff {
  const _$AllocationPermissionKeysTearOff();

  _AllocationPermissionKeys call(
      {required String read,
      required String create,
      required String update,
      required String delete}) {
    return _AllocationPermissionKeys(
      read: read,
      create: create,
      update: update,
      delete: delete,
    );
  }

  AllocationPermissionKeys fromJson(Map<String, Object?> json) {
    return AllocationPermissionKeys.fromJson(json);
  }
}

/// @nodoc
const $AllocationPermissionKeys = _$AllocationPermissionKeysTearOff();

/// @nodoc
mixin _$AllocationPermissionKeys {
  String get read => throw _privateConstructorUsedError;
  String get create => throw _privateConstructorUsedError;
  String get update => throw _privateConstructorUsedError;
  String get delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllocationPermissionKeysCopyWith<AllocationPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllocationPermissionKeysCopyWith<$Res> {
  factory $AllocationPermissionKeysCopyWith(AllocationPermissionKeys value,
          $Res Function(AllocationPermissionKeys) then) =
      _$AllocationPermissionKeysCopyWithImpl<$Res>;
  $Res call({String read, String create, String update, String delete});
}

/// @nodoc
class _$AllocationPermissionKeysCopyWithImpl<$Res>
    implements $AllocationPermissionKeysCopyWith<$Res> {
  _$AllocationPermissionKeysCopyWithImpl(this._value, this._then);

  final AllocationPermissionKeys _value;
  // ignore: unused_field
  final $Res Function(AllocationPermissionKeys) _then;

  @override
  $Res call({
    Object? read = freezed,
    Object? create = freezed,
    Object? update = freezed,
    Object? delete = freezed,
  }) {
    return _then(_value.copyWith(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String,
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
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
abstract class _$AllocationPermissionKeysCopyWith<$Res>
    implements $AllocationPermissionKeysCopyWith<$Res> {
  factory _$AllocationPermissionKeysCopyWith(_AllocationPermissionKeys value,
          $Res Function(_AllocationPermissionKeys) then) =
      __$AllocationPermissionKeysCopyWithImpl<$Res>;
  @override
  $Res call({String read, String create, String update, String delete});
}

/// @nodoc
class __$AllocationPermissionKeysCopyWithImpl<$Res>
    extends _$AllocationPermissionKeysCopyWithImpl<$Res>
    implements _$AllocationPermissionKeysCopyWith<$Res> {
  __$AllocationPermissionKeysCopyWithImpl(_AllocationPermissionKeys _value,
      $Res Function(_AllocationPermissionKeys) _then)
      : super(_value, (v) => _then(v as _AllocationPermissionKeys));

  @override
  _AllocationPermissionKeys get _value =>
      super._value as _AllocationPermissionKeys;

  @override
  $Res call({
    Object? read = freezed,
    Object? create = freezed,
    Object? update = freezed,
    Object? delete = freezed,
  }) {
    return _then(_AllocationPermissionKeys(
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String,
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
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
class _$_AllocationPermissionKeys extends _AllocationPermissionKeys {
  _$_AllocationPermissionKeys(
      {required this.read,
      required this.create,
      required this.update,
      required this.delete})
      : super._();

  factory _$_AllocationPermissionKeys.fromJson(Map<String, dynamic> json) =>
      _$$_AllocationPermissionKeysFromJson(json);

  @override
  final String read;
  @override
  final String create;
  @override
  final String update;
  @override
  final String delete;

  @override
  String toString() {
    return 'AllocationPermissionKeys(read: $read, create: $create, update: $update, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllocationPermissionKeys &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.create, create) &&
            const DeepCollectionEquality().equals(other.update, update) &&
            const DeepCollectionEquality().equals(other.delete, delete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(create),
      const DeepCollectionEquality().hash(update),
      const DeepCollectionEquality().hash(delete));

  @JsonKey(ignore: true)
  @override
  _$AllocationPermissionKeysCopyWith<_AllocationPermissionKeys> get copyWith =>
      __$AllocationPermissionKeysCopyWithImpl<_AllocationPermissionKeys>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllocationPermissionKeysToJson(this);
  }
}

abstract class _AllocationPermissionKeys extends AllocationPermissionKeys {
  factory _AllocationPermissionKeys(
      {required String read,
      required String create,
      required String update,
      required String delete}) = _$_AllocationPermissionKeys;
  _AllocationPermissionKeys._() : super._();

  factory _AllocationPermissionKeys.fromJson(Map<String, dynamic> json) =
      _$_AllocationPermissionKeys.fromJson;

  @override
  String get read;
  @override
  String get create;
  @override
  String get update;
  @override
  String get delete;
  @override
  @JsonKey(ignore: true)
  _$AllocationPermissionKeysCopyWith<_AllocationPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
