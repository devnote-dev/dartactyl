import '../../../models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location with SerializableMixin {
  int id;
  String short;
  String? long;
  DateTime updatedAt;
  DateTime createdAt;
  Location({
    required this.id,
    required this.short,
    this.long,
    required this.updatedAt,
    required this.createdAt,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}