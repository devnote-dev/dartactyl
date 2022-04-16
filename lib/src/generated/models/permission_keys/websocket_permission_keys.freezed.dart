// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/permission_keys/websocket_permission_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebsocketPermissionKeys _$WebsocketPermissionKeysFromJson(
    Map<String, dynamic> json) {
  return _WebsocketPermissionKeys.fromJson(json);
}

/// @nodoc
class _$WebsocketPermissionKeysTearOff {
  const _$WebsocketPermissionKeysTearOff();

  _WebsocketPermissionKeys call({required String connect}) {
    return _WebsocketPermissionKeys(
      connect: connect,
    );
  }

  WebsocketPermissionKeys fromJson(Map<String, Object?> json) {
    return WebsocketPermissionKeys.fromJson(json);
  }
}

/// @nodoc
const $WebsocketPermissionKeys = _$WebsocketPermissionKeysTearOff();

/// @nodoc
mixin _$WebsocketPermissionKeys {
  String get connect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebsocketPermissionKeysCopyWith<WebsocketPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketPermissionKeysCopyWith<$Res> {
  factory $WebsocketPermissionKeysCopyWith(WebsocketPermissionKeys value,
          $Res Function(WebsocketPermissionKeys) then) =
      _$WebsocketPermissionKeysCopyWithImpl<$Res>;
  $Res call({String connect});
}

/// @nodoc
class _$WebsocketPermissionKeysCopyWithImpl<$Res>
    implements $WebsocketPermissionKeysCopyWith<$Res> {
  _$WebsocketPermissionKeysCopyWithImpl(this._value, this._then);

  final WebsocketPermissionKeys _value;
  // ignore: unused_field
  final $Res Function(WebsocketPermissionKeys) _then;

  @override
  $Res call({
    Object? connect = freezed,
  }) {
    return _then(_value.copyWith(
      connect: connect == freezed
          ? _value.connect
          : connect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WebsocketPermissionKeysCopyWith<$Res>
    implements $WebsocketPermissionKeysCopyWith<$Res> {
  factory _$WebsocketPermissionKeysCopyWith(_WebsocketPermissionKeys value,
          $Res Function(_WebsocketPermissionKeys) then) =
      __$WebsocketPermissionKeysCopyWithImpl<$Res>;
  @override
  $Res call({String connect});
}

/// @nodoc
class __$WebsocketPermissionKeysCopyWithImpl<$Res>
    extends _$WebsocketPermissionKeysCopyWithImpl<$Res>
    implements _$WebsocketPermissionKeysCopyWith<$Res> {
  __$WebsocketPermissionKeysCopyWithImpl(_WebsocketPermissionKeys _value,
      $Res Function(_WebsocketPermissionKeys) _then)
      : super(_value, (v) => _then(v as _WebsocketPermissionKeys));

  @override
  _WebsocketPermissionKeys get _value =>
      super._value as _WebsocketPermissionKeys;

  @override
  $Res call({
    Object? connect = freezed,
  }) {
    return _then(_WebsocketPermissionKeys(
      connect: connect == freezed
          ? _value.connect
          : connect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebsocketPermissionKeys extends _WebsocketPermissionKeys {
  _$_WebsocketPermissionKeys({required this.connect}) : super._();

  factory _$_WebsocketPermissionKeys.fromJson(Map<String, dynamic> json) =>
      _$$_WebsocketPermissionKeysFromJson(json);

  @override
  final String connect;

  @override
  String toString() {
    return 'WebsocketPermissionKeys(connect: $connect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WebsocketPermissionKeys &&
            const DeepCollectionEquality().equals(other.connect, connect));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(connect));

  @JsonKey(ignore: true)
  @override
  _$WebsocketPermissionKeysCopyWith<_WebsocketPermissionKeys> get copyWith =>
      __$WebsocketPermissionKeysCopyWithImpl<_WebsocketPermissionKeys>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebsocketPermissionKeysToJson(this);
  }
}

abstract class _WebsocketPermissionKeys extends WebsocketPermissionKeys {
  factory _WebsocketPermissionKeys({required String connect}) =
      _$_WebsocketPermissionKeys;
  _WebsocketPermissionKeys._() : super._();

  factory _WebsocketPermissionKeys.fromJson(Map<String, dynamic> json) =
      _$_WebsocketPermissionKeys.fromJson;

  @override
  String get connect;
  @override
  @JsonKey(ignore: true)
  _$WebsocketPermissionKeysCopyWith<_WebsocketPermissionKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
