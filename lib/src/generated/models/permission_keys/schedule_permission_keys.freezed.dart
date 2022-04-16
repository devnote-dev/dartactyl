// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/permission_keys/schedule_permission_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchedulePermissionKeys _$SchedulePermissionKeysFromJson(
    Map<String, dynamic> json) {
  return _SchedulePermissionKeys.fromJson(json);
}

/// @nodoc
class _$SchedulePermissionKeysTearOff {
  const _$SchedulePermissionKeysTearOff();

  _SchedulePermissionKeys call(
      {required String create,
      required String read,
      required String update,
      required String delete}) {
    return _SchedulePermissionKeys(
      create: create,
      read: read,
      update: update,
      delete: delete,
    );
  }

  SchedulePermissionKeys fromJson(Map<String, Object?> json) {
    return SchedulePermissionKeys.fromJson(json);
  }
}

/// @nodoc
const $SchedulePermissionKeys = _$SchedulePermissionKeysTearOff();

/// @nodoc
mixin _$SchedulePermissionKeys {
  String get create => throw _privateConstructorUsedError;
  String get read => throw _privateConstructorUsedError;
  String get update => throw _privateConstructorUsedError;
  String get delete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulePermissionKeysCopyWith<SchedulePermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePermissionKeysCopyWith<$Res> {
  factory $SchedulePermissionKeysCopyWith(SchedulePermissionKeys value,
          $Res Function(SchedulePermissionKeys) then) =
      _$SchedulePermissionKeysCopyWithImpl<$Res>;
  $Res call({String create, String read, String update, String delete});
}

/// @nodoc
class _$SchedulePermissionKeysCopyWithImpl<$Res>
    implements $SchedulePermissionKeysCopyWith<$Res> {
  _$SchedulePermissionKeysCopyWithImpl(this._value, this._then);

  final SchedulePermissionKeys _value;
  // ignore: unused_field
  final $Res Function(SchedulePermissionKeys) _then;

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
abstract class _$SchedulePermissionKeysCopyWith<$Res>
    implements $SchedulePermissionKeysCopyWith<$Res> {
  factory _$SchedulePermissionKeysCopyWith(_SchedulePermissionKeys value,
          $Res Function(_SchedulePermissionKeys) then) =
      __$SchedulePermissionKeysCopyWithImpl<$Res>;
  @override
  $Res call({String create, String read, String update, String delete});
}

/// @nodoc
class __$SchedulePermissionKeysCopyWithImpl<$Res>
    extends _$SchedulePermissionKeysCopyWithImpl<$Res>
    implements _$SchedulePermissionKeysCopyWith<$Res> {
  __$SchedulePermissionKeysCopyWithImpl(_SchedulePermissionKeys _value,
      $Res Function(_SchedulePermissionKeys) _then)
      : super(_value, (v) => _then(v as _SchedulePermissionKeys));

  @override
  _SchedulePermissionKeys get _value => super._value as _SchedulePermissionKeys;

  @override
  $Res call({
    Object? create = freezed,
    Object? read = freezed,
    Object? update = freezed,
    Object? delete = freezed,
  }) {
    return _then(_SchedulePermissionKeys(
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
class _$_SchedulePermissionKeys extends _SchedulePermissionKeys {
  _$_SchedulePermissionKeys(
      {required this.create,
      required this.read,
      required this.update,
      required this.delete})
      : super._();

  factory _$_SchedulePermissionKeys.fromJson(Map<String, dynamic> json) =>
      _$$_SchedulePermissionKeysFromJson(json);

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
    return 'SchedulePermissionKeys(create: $create, read: $read, update: $update, delete: $delete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SchedulePermissionKeys &&
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
  _$SchedulePermissionKeysCopyWith<_SchedulePermissionKeys> get copyWith =>
      __$SchedulePermissionKeysCopyWithImpl<_SchedulePermissionKeys>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchedulePermissionKeysToJson(this);
  }
}

abstract class _SchedulePermissionKeys extends SchedulePermissionKeys {
  factory _SchedulePermissionKeys(
      {required String create,
      required String read,
      required String update,
      required String delete}) = _$_SchedulePermissionKeys;
  _SchedulePermissionKeys._() : super._();

  factory _SchedulePermissionKeys.fromJson(Map<String, dynamic> json) =
      _$_SchedulePermissionKeys.fromJson;

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
  _$SchedulePermissionKeysCopyWith<_SchedulePermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
