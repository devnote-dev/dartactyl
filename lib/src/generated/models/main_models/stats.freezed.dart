// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../models/main_models/stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  ServerPowerState get currentState => throw _privateConstructorUsedError;
  bool get isSuspended => throw _privateConstructorUsedError;
  StatsResources get resources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call(
      {ServerPowerState currentState,
      bool isSuspended,
      StatsResources resources});

  $StatsResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? isSuspended = null,
    Object? resources = null,
  }) {
    return _then(_value.copyWith(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as ServerPowerState,
      isSuspended: null == isSuspended
          ? _value.isSuspended
          : isSuspended // ignore: cast_nullable_to_non_nullable
              as bool,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as StatsResources,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatsResourcesCopyWith<$Res> get resources {
    return $StatsResourcesCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ServerPowerState currentState,
      bool isSuspended,
      StatsResources resources});

  @override
  $StatsResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res, _$_Stats>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentState = null,
    Object? isSuspended = null,
    Object? resources = null,
  }) {
    return _then(_$_Stats(
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as ServerPowerState,
      isSuspended: null == isSuspended
          ? _value.isSuspended
          : isSuspended // ignore: cast_nullable_to_non_nullable
              as bool,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as StatsResources,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats extends _Stats {
  const _$_Stats(
      {required this.currentState,
      required this.isSuspended,
      required this.resources})
      : super._();

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final ServerPowerState currentState;
  @override
  final bool isSuspended;
  @override
  final StatsResources resources;

  @override
  String toString() {
    return 'Stats(currentState: $currentState, isSuspended: $isSuspended, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            (identical(other.isSuspended, isSuspended) ||
                other.isSuspended == isSuspended) &&
            (identical(other.resources, resources) ||
                other.resources == resources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentState, isSuspended, resources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats extends Stats {
  const factory _Stats(
      {required final ServerPowerState currentState,
      required final bool isSuspended,
      required final StatsResources resources}) = _$_Stats;
  const _Stats._() : super._();

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  ServerPowerState get currentState;
  @override
  bool get isSuspended;
  @override
  StatsResources get resources;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}

StatsResources _$StatsResourcesFromJson(Map<String, dynamic> json) {
  return _StatsResources.fromJson(json);
}

/// @nodoc
mixin _$StatsResources {
  int get memoryBytes => throw _privateConstructorUsedError;
  double get cpuAbsolute => throw _privateConstructorUsedError;
  int get diskBytes => throw _privateConstructorUsedError;
  int get networkRxBytes => throw _privateConstructorUsedError;
  int get networkTxBytes =>
      throw _privateConstructorUsedError; // required int uptime, //todo: doesnt exist in v1.7 or earlier
  /// the amount of time the server has been running
  /// added in pterodactyl v1.8, where it garunteed to exist
  int? get uptime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsResourcesCopyWith<StatsResources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsResourcesCopyWith<$Res> {
  factory $StatsResourcesCopyWith(
          StatsResources value, $Res Function(StatsResources) then) =
      _$StatsResourcesCopyWithImpl<$Res, StatsResources>;
  @useResult
  $Res call(
      {int memoryBytes,
      double cpuAbsolute,
      int diskBytes,
      int networkRxBytes,
      int networkTxBytes,
      int? uptime});
}

/// @nodoc
class _$StatsResourcesCopyWithImpl<$Res, $Val extends StatsResources>
    implements $StatsResourcesCopyWith<$Res> {
  _$StatsResourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryBytes = null,
    Object? cpuAbsolute = null,
    Object? diskBytes = null,
    Object? networkRxBytes = null,
    Object? networkTxBytes = null,
    Object? uptime = freezed,
  }) {
    return _then(_value.copyWith(
      memoryBytes: null == memoryBytes
          ? _value.memoryBytes
          : memoryBytes // ignore: cast_nullable_to_non_nullable
              as int,
      cpuAbsolute: null == cpuAbsolute
          ? _value.cpuAbsolute
          : cpuAbsolute // ignore: cast_nullable_to_non_nullable
              as double,
      diskBytes: null == diskBytes
          ? _value.diskBytes
          : diskBytes // ignore: cast_nullable_to_non_nullable
              as int,
      networkRxBytes: null == networkRxBytes
          ? _value.networkRxBytes
          : networkRxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      networkTxBytes: null == networkTxBytes
          ? _value.networkTxBytes
          : networkTxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: freezed == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatsResourcesCopyWith<$Res>
    implements $StatsResourcesCopyWith<$Res> {
  factory _$$_StatsResourcesCopyWith(
          _$_StatsResources value, $Res Function(_$_StatsResources) then) =
      __$$_StatsResourcesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int memoryBytes,
      double cpuAbsolute,
      int diskBytes,
      int networkRxBytes,
      int networkTxBytes,
      int? uptime});
}

/// @nodoc
class __$$_StatsResourcesCopyWithImpl<$Res>
    extends _$StatsResourcesCopyWithImpl<$Res, _$_StatsResources>
    implements _$$_StatsResourcesCopyWith<$Res> {
  __$$_StatsResourcesCopyWithImpl(
      _$_StatsResources _value, $Res Function(_$_StatsResources) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryBytes = null,
    Object? cpuAbsolute = null,
    Object? diskBytes = null,
    Object? networkRxBytes = null,
    Object? networkTxBytes = null,
    Object? uptime = freezed,
  }) {
    return _then(_$_StatsResources(
      memoryBytes: null == memoryBytes
          ? _value.memoryBytes
          : memoryBytes // ignore: cast_nullable_to_non_nullable
              as int,
      cpuAbsolute: null == cpuAbsolute
          ? _value.cpuAbsolute
          : cpuAbsolute // ignore: cast_nullable_to_non_nullable
              as double,
      diskBytes: null == diskBytes
          ? _value.diskBytes
          : diskBytes // ignore: cast_nullable_to_non_nullable
              as int,
      networkRxBytes: null == networkRxBytes
          ? _value.networkRxBytes
          : networkRxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      networkTxBytes: null == networkTxBytes
          ? _value.networkTxBytes
          : networkTxBytes // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: freezed == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatsResources extends _StatsResources {
  const _$_StatsResources(
      {required this.memoryBytes,
      required this.cpuAbsolute,
      required this.diskBytes,
      required this.networkRxBytes,
      required this.networkTxBytes,
      this.uptime})
      : super._();

  factory _$_StatsResources.fromJson(Map<String, dynamic> json) =>
      _$$_StatsResourcesFromJson(json);

  @override
  final int memoryBytes;
  @override
  final double cpuAbsolute;
  @override
  final int diskBytes;
  @override
  final int networkRxBytes;
  @override
  final int networkTxBytes;
// required int uptime, //todo: doesnt exist in v1.7 or earlier
  /// the amount of time the server has been running
  /// added in pterodactyl v1.8, where it garunteed to exist
  @override
  final int? uptime;

  @override
  String toString() {
    return 'StatsResources(memoryBytes: $memoryBytes, cpuAbsolute: $cpuAbsolute, diskBytes: $diskBytes, networkRxBytes: $networkRxBytes, networkTxBytes: $networkTxBytes, uptime: $uptime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatsResources &&
            (identical(other.memoryBytes, memoryBytes) ||
                other.memoryBytes == memoryBytes) &&
            (identical(other.cpuAbsolute, cpuAbsolute) ||
                other.cpuAbsolute == cpuAbsolute) &&
            (identical(other.diskBytes, diskBytes) ||
                other.diskBytes == diskBytes) &&
            (identical(other.networkRxBytes, networkRxBytes) ||
                other.networkRxBytes == networkRxBytes) &&
            (identical(other.networkTxBytes, networkTxBytes) ||
                other.networkTxBytes == networkTxBytes) &&
            (identical(other.uptime, uptime) || other.uptime == uptime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memoryBytes, cpuAbsolute,
      diskBytes, networkRxBytes, networkTxBytes, uptime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsResourcesCopyWith<_$_StatsResources> get copyWith =>
      __$$_StatsResourcesCopyWithImpl<_$_StatsResources>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsResourcesToJson(
      this,
    );
  }
}

abstract class _StatsResources extends StatsResources {
  const factory _StatsResources(
      {required final int memoryBytes,
      required final double cpuAbsolute,
      required final int diskBytes,
      required final int networkRxBytes,
      required final int networkTxBytes,
      final int? uptime}) = _$_StatsResources;
  const _StatsResources._() : super._();

  factory _StatsResources.fromJson(Map<String, dynamic> json) =
      _$_StatsResources.fromJson;

  @override
  int get memoryBytes;
  @override
  double get cpuAbsolute;
  @override
  int get diskBytes;
  @override
  int get networkRxBytes;
  @override
  int get networkTxBytes;
  @override // required int uptime, //todo: doesnt exist in v1.7 or earlier
  /// the amount of time the server has been running
  /// added in pterodactyl v1.8, where it garunteed to exist
  int? get uptime;
  @override
  @JsonKey(ignore: true)
  _$$_StatsResourcesCopyWith<_$_StatsResources> get copyWith =>
      throw _privateConstructorUsedError;
}
