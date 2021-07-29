import 'package:json_annotation/json_annotation.dart';

part 'shedule_task.g.dart';

@JsonSerializable()
class ScheduleTask {
  int id;
  int sequenceId;
  String action;
  String payload;
  int timeOffset;
  bool isQueued;
  DateTime createdAt;
  DateTime updatedAt;
  ScheduleTask({
    required this.id,
    required this.sequenceId,
    required this.action,
    required this.payload,
    required this.timeOffset,
    required this.isQueued,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ScheduleTask.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTaskFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleTaskToJson(this);
}
