// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/request_models/send_server_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendServerCommand _$SendServerCommandFromJson(Map<String, dynamic> json) {
  return _SendServerCommand.fromJson(json);
}

/// @nodoc
class _$SendServerCommandTearOff {
  const _$SendServerCommandTearOff();

  _SendServerCommand call({required String command}) {
    return _SendServerCommand(
      command: command,
    );
  }

  SendServerCommand fromJson(Map<String, Object?> json) {
    return SendServerCommand.fromJson(json);
  }
}

/// @nodoc
const $SendServerCommand = _$SendServerCommandTearOff();

/// @nodoc
mixin _$SendServerCommand {
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendServerCommandCopyWith<SendServerCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendServerCommandCopyWith<$Res> {
  factory $SendServerCommandCopyWith(
          SendServerCommand value, $Res Function(SendServerCommand) then) =
      _$SendServerCommandCopyWithImpl<$Res>;
  $Res call({String command});
}

/// @nodoc
class _$SendServerCommandCopyWithImpl<$Res>
    implements $SendServerCommandCopyWith<$Res> {
  _$SendServerCommandCopyWithImpl(this._value, this._then);

  final SendServerCommand _value;
  // ignore: unused_field
  final $Res Function(SendServerCommand) _then;

  @override
  $Res call({
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendServerCommandCopyWith<$Res>
    implements $SendServerCommandCopyWith<$Res> {
  factory _$SendServerCommandCopyWith(
          _SendServerCommand value, $Res Function(_SendServerCommand) then) =
      __$SendServerCommandCopyWithImpl<$Res>;
  @override
  $Res call({String command});
}

/// @nodoc
class __$SendServerCommandCopyWithImpl<$Res>
    extends _$SendServerCommandCopyWithImpl<$Res>
    implements _$SendServerCommandCopyWith<$Res> {
  __$SendServerCommandCopyWithImpl(
      _SendServerCommand _value, $Res Function(_SendServerCommand) _then)
      : super(_value, (v) => _then(v as _SendServerCommand));

  @override
  _SendServerCommand get _value => super._value as _SendServerCommand;

  @override
  $Res call({
    Object? command = freezed,
  }) {
    return _then(_SendServerCommand(
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendServerCommand implements _SendServerCommand {
  _$_SendServerCommand({required this.command});

  factory _$_SendServerCommand.fromJson(Map<String, dynamic> json) =>
      _$$_SendServerCommandFromJson(json);

  @override
  final String command;

  @override
  String toString() {
    return 'SendServerCommand(command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendServerCommand &&
            const DeepCollectionEquality().equals(other.command, command));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(command));

  @JsonKey(ignore: true)
  @override
  _$SendServerCommandCopyWith<_SendServerCommand> get copyWith =>
      __$SendServerCommandCopyWithImpl<_SendServerCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendServerCommandToJson(this);
  }
}

abstract class _SendServerCommand implements SendServerCommand {
  factory _SendServerCommand({required String command}) = _$_SendServerCommand;

  factory _SendServerCommand.fromJson(Map<String, dynamic> json) =
      _$_SendServerCommand.fromJson;

  @override
  String get command;
  @override
  @JsonKey(ignore: true)
  _$SendServerCommandCopyWith<_SendServerCommand> get copyWith =>
      throw _privateConstructorUsedError;
}
