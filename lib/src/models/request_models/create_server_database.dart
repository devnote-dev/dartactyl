import 'package:dartactyl/models.dart';
import 'package:json_annotation/json_annotation.dart';

part '../../generated/models/request_models/create_server_database.g.dart';

@JsonSerializable()
class CreateServerDatabase {
  String database;
  String remote;

  CreateServerDatabase({
    required this.database,
    required this.remote,
  });

  factory CreateServerDatabase.fromJson(JsonMap json) =>
      _$CreateServerDatabaseFromJson(json);
  JsonMap toJson() => _$CreateServerDatabaseToJson(this);
}
