import 'package:dartactyl/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'databases.g.dart';

@JsonSerializable()
class Databases with SerializableMixin {
  int id;
  int server;
  int host;
  String database;
  String username;
  String remote;
  int maxConnections;
  String createdAt;
  String updatedAt;

  Databases({
    required this.id,
    required this.server,
    required this.host,
    required this.database,
    required this.username,
    required this.remote,
    required this.maxConnections,
    required this.createdAt,
    required this.updatedAt,
  });
  factory Databases.fromJson(Map<String, dynamic> json) =>
      _$DatabasesFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DatabasesToJson(this);
}
