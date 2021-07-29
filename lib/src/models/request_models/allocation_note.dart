import 'package:json_annotation/json_annotation.dart';

part 'allocation_note.g.dart';

@JsonSerializable()
class AllocationNote {
  String notes;

  AllocationNote({required this.notes});

  factory AllocationNote.fromJson(Map<String, dynamic> json) =>
      _$AllocationNoteFromJson(json);
  Map<String, dynamic> toJson() => _$AllocationNoteToJson(this);
}