import 'package:dartactyl/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/models/main_models/egg_variable.freezed.dart';
part '../../generated/models/main_models/egg_variable.g.dart';

@freezed
class EggVariable with SerializableMixin, _$EggVariable {
  const factory EggVariable({
    required String name,
    required String description,
    required String envVariable,
    required String defaultValue,
    String? serverValue,
    required bool isEditable,
    required String rules,
  }) = _EggVariable;
  factory EggVariable.fromJson(JsonMap json) => _$EggVariableFromJson(json);

  const EggVariable._();
  @override
  JsonMap toJson();
}
