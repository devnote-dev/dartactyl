// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/main_models/egg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Egg _$EggFromJson(Map<String, dynamic> json) {
  return _Egg.fromJson(json);
}

/// @nodoc
class _$EggTearOff {
  const _$EggTearOff();

  _Egg call({required String uuid, required String name}) {
    return _Egg(
      uuid: uuid,
      name: name,
    );
  }

  Egg fromJson(Map<String, Object?> json) {
    return Egg.fromJson(json);
  }
}

/// @nodoc
const $Egg = _$EggTearOff();

/// @nodoc
mixin _$Egg {
// only uuid and name show up in the client api
// int id,
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EggCopyWith<Egg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EggCopyWith<$Res> {
  factory $EggCopyWith(Egg value, $Res Function(Egg) then) =
      _$EggCopyWithImpl<$Res>;
  $Res call({String uuid, String name});
}

/// @nodoc
class _$EggCopyWithImpl<$Res> implements $EggCopyWith<$Res> {
  _$EggCopyWithImpl(this._value, this._then);

  final Egg _value;
  // ignore: unused_field
  final $Res Function(Egg) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EggCopyWith<$Res> implements $EggCopyWith<$Res> {
  factory _$EggCopyWith(_Egg value, $Res Function(_Egg) then) =
      __$EggCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String name});
}

/// @nodoc
class __$EggCopyWithImpl<$Res> extends _$EggCopyWithImpl<$Res>
    implements _$EggCopyWith<$Res> {
  __$EggCopyWithImpl(_Egg _value, $Res Function(_Egg) _then)
      : super(_value, (v) => _then(v as _Egg));

  @override
  _Egg get _value => super._value as _Egg;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
  }) {
    return _then(_Egg(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Egg extends _Egg {
  _$_Egg({required this.uuid, required this.name}) : super._();

  factory _$_Egg.fromJson(Map<String, dynamic> json) => _$$_EggFromJson(json);

  @override // only uuid and name show up in the client api
// int id,
  final String uuid;
  @override
  final String name;

  @override
  String toString() {
    return 'Egg(uuid: $uuid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Egg &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$EggCopyWith<_Egg> get copyWith =>
      __$EggCopyWithImpl<_Egg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EggToJson(this);
  }
}

abstract class _Egg extends Egg {
  factory _Egg({required String uuid, required String name}) = _$_Egg;
  _Egg._() : super._();

  factory _Egg.fromJson(Map<String, dynamic> json) = _$_Egg.fromJson;

  @override // only uuid and name show up in the client api
// int id,
  String get uuid;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$EggCopyWith<_Egg> get copyWith => throw _privateConstructorUsedError;
}
