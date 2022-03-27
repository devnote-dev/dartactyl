import 'package:json_annotation/json_annotation.dart';

import 'package:dartactyl/models.dart';
part 'egg_script.g.dart';

@JsonSerializable()
class EggScript {
  bool privileged;
  String install;
  String entry;
  String container;
  dynamic scriptExtends;
  EggScript({
    required this.privileged,
    required this.install,
    required this.entry,
    required this.container,
    required this.scriptExtends,
  });
  factory EggScript.fromJson(JsonMap json) => _$EggScriptFromJson(json);
  JsonMap toJson() => _$EggScriptToJson(this);
}
