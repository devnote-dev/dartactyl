// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/request_models/create_api_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateApiKey _$CreateApiKeyFromJson(Map<String, dynamic> json) {
  return _CreateApiKey.fromJson(json);
}

/// @nodoc
mixin _$CreateApiKey {
  String get description => throw _privateConstructorUsedError;
  List<String> get allowedIps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateApiKeyCopyWith<CreateApiKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateApiKeyCopyWith<$Res> {
  factory $CreateApiKeyCopyWith(
          CreateApiKey value, $Res Function(CreateApiKey) then) =
      _$CreateApiKeyCopyWithImpl<$Res, CreateApiKey>;
  @useResult
  $Res call({String description, List<String> allowedIps});
}

/// @nodoc
class _$CreateApiKeyCopyWithImpl<$Res, $Val extends CreateApiKey>
    implements $CreateApiKeyCopyWith<$Res> {
  _$CreateApiKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? allowedIps = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allowedIps: null == allowedIps
          ? _value.allowedIps
          : allowedIps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateApiKeyCopyWith<$Res>
    implements $CreateApiKeyCopyWith<$Res> {
  factory _$$_CreateApiKeyCopyWith(
          _$_CreateApiKey value, $Res Function(_$_CreateApiKey) then) =
      __$$_CreateApiKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> allowedIps});
}

/// @nodoc
class __$$_CreateApiKeyCopyWithImpl<$Res>
    extends _$CreateApiKeyCopyWithImpl<$Res, _$_CreateApiKey>
    implements _$$_CreateApiKeyCopyWith<$Res> {
  __$$_CreateApiKeyCopyWithImpl(
      _$_CreateApiKey _value, $Res Function(_$_CreateApiKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? allowedIps = null,
  }) {
    return _then(_$_CreateApiKey(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allowedIps: null == allowedIps
          ? _value._allowedIps
          : allowedIps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateApiKey implements _CreateApiKey {
  const _$_CreateApiKey(
      {required this.description, required final List<String> allowedIps})
      : _allowedIps = allowedIps;

  factory _$_CreateApiKey.fromJson(Map<String, dynamic> json) =>
      _$$_CreateApiKeyFromJson(json);

  @override
  final String description;
  final List<String> _allowedIps;
  @override
  List<String> get allowedIps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedIps);
  }

  @override
  String toString() {
    return 'CreateApiKey(description: $description, allowedIps: $allowedIps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateApiKey &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._allowedIps, _allowedIps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_allowedIps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateApiKeyCopyWith<_$_CreateApiKey> get copyWith =>
      __$$_CreateApiKeyCopyWithImpl<_$_CreateApiKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateApiKeyToJson(
      this,
    );
  }
}

abstract class _CreateApiKey implements CreateApiKey {
  const factory _CreateApiKey(
      {required final String description,
      required final List<String> allowedIps}) = _$_CreateApiKey;

  factory _CreateApiKey.fromJson(Map<String, dynamic> json) =
      _$_CreateApiKey.fromJson;

  @override
  String get description;
  @override
  List<String> get allowedIps;
  @override
  @JsonKey(ignore: true)
  _$$_CreateApiKeyCopyWith<_$_CreateApiKey> get copyWith =>
      throw _privateConstructorUsedError;
}
