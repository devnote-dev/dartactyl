// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/main_models/backup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Backup _$BackupFromJson(Map<String, dynamic> json) {
  return _Backup.fromJson(json);
}

/// @nodoc
mixin _$Backup {
  String get uuid => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get ignoredFiles => throw _privateConstructorUsedError;
  String get checksum => throw _privateConstructorUsedError;
  int get bytes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackupCopyWith<Backup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupCopyWith<$Res> {
  factory $BackupCopyWith(Backup value, $Res Function(Backup) then) =
      _$BackupCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      bool isSuccessful,
      bool isLocked,
      String name,
      List<String>? ignoredFiles,
      String checksum,
      int bytes,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class _$BackupCopyWithImpl<$Res> implements $BackupCopyWith<$Res> {
  _$BackupCopyWithImpl(this._value, this._then);

  final Backup _value;
  // ignore: unused_field
  final $Res Function(Backup) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? isSuccessful = freezed,
    Object? isLocked = freezed,
    Object? name = freezed,
    Object? ignoredFiles = freezed,
    Object? checksum = freezed,
    Object? bytes = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: isLocked == freezed
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ignoredFiles: ignoredFiles == freezed
          ? _value.ignoredFiles
          : ignoredFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      checksum: checksum == freezed
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_BackupCopyWith<$Res> implements $BackupCopyWith<$Res> {
  factory _$$_BackupCopyWith(_$_Backup value, $Res Function(_$_Backup) then) =
      __$$_BackupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      bool isSuccessful,
      bool isLocked,
      String name,
      List<String>? ignoredFiles,
      String checksum,
      int bytes,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class __$$_BackupCopyWithImpl<$Res> extends _$BackupCopyWithImpl<$Res>
    implements _$$_BackupCopyWith<$Res> {
  __$$_BackupCopyWithImpl(_$_Backup _value, $Res Function(_$_Backup) _then)
      : super(_value, (v) => _then(v as _$_Backup));

  @override
  _$_Backup get _value => super._value as _$_Backup;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? isSuccessful = freezed,
    Object? isLocked = freezed,
    Object? name = freezed,
    Object? ignoredFiles = freezed,
    Object? checksum = freezed,
    Object? bytes = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$_Backup(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: isLocked == freezed
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ignoredFiles: ignoredFiles == freezed
          ? _value._ignoredFiles
          : ignoredFiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      checksum: checksum == freezed
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Backup extends _Backup {
  _$_Backup(
      {required this.uuid,
      required this.isSuccessful,
      required this.isLocked,
      required this.name,
      final List<String>? ignoredFiles,
      required this.checksum,
      required this.bytes,
      required this.createdAt,
      this.completedAt})
      : _ignoredFiles = ignoredFiles,
        super._();

  factory _$_Backup.fromJson(Map<String, dynamic> json) =>
      _$$_BackupFromJson(json);

  @override
  final String uuid;
  @override
  final bool isSuccessful;
  @override
  final bool isLocked;
  @override
  final String name;
  final List<String>? _ignoredFiles;
  @override
  List<String>? get ignoredFiles {
    final value = _ignoredFiles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String checksum;
  @override
  final int bytes;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'Backup(uuid: $uuid, isSuccessful: $isSuccessful, isLocked: $isLocked, name: $name, ignoredFiles: $ignoredFiles, checksum: $checksum, bytes: $bytes, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Backup &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isLocked, isLocked) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._ignoredFiles, _ignoredFiles) &&
            const DeepCollectionEquality().equals(other.checksum, checksum) &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.completedAt, completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isLocked),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_ignoredFiles),
      const DeepCollectionEquality().hash(checksum),
      const DeepCollectionEquality().hash(bytes),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(completedAt));

  @JsonKey(ignore: true)
  @override
  _$$_BackupCopyWith<_$_Backup> get copyWith =>
      __$$_BackupCopyWithImpl<_$_Backup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BackupToJson(this);
  }
}

abstract class _Backup extends Backup {
  factory _Backup(
      {required final String uuid,
      required final bool isSuccessful,
      required final bool isLocked,
      required final String name,
      final List<String>? ignoredFiles,
      required final String checksum,
      required final int bytes,
      required final DateTime createdAt,
      final DateTime? completedAt}) = _$_Backup;
  _Backup._() : super._();

  factory _Backup.fromJson(Map<String, dynamic> json) = _$_Backup.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  bool get isSuccessful => throw _privateConstructorUsedError;
  @override
  bool get isLocked => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String>? get ignoredFiles => throw _privateConstructorUsedError;
  @override
  String get checksum => throw _privateConstructorUsedError;
  @override
  int get bytes => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BackupCopyWith<_$_Backup> get copyWith =>
      throw _privateConstructorUsedError;
}
