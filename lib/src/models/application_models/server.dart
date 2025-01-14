import 'package:dartactyl/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/models/application_models/server.freezed.dart';
part '../../generated/models/application_models/server.g.dart';

@freezed
class ApplicationServer with _$ApplicationServer, SerializableMixin {
  const ApplicationServer._();
  // https://github.com/pterodactyl/panel/blob/1.0-develop/app/Transformers/Api/Application/ServerTransformer.php
  const factory ApplicationServer({
    required int id,
    required String externalId,
    required String uuid,
    required String identifier,
    required String name,
    required String description,
    required ServerStatus status,
    @Deprecated('Use status instead') required bool suspended,
    required ServerLimits limits,
    required ServerFeatureLimits featureLimits,
    required int user,
    required int node,
    required int allocation,
    required int nest,
    required int egg,
    required ApplicationServerContainer container,
    required DateTime createdAt,
    required DateTime updatedAt,
    ApplicationServerRelationships? relationships,
  }) = _ApplicationServer;

  factory ApplicationServer.fromJson(JsonMap json) =>
      _$ApplicationServerFromJson(json);
}

@freezed
class ApplicationServerContainer with _$ApplicationServerContainer {
  const factory ApplicationServerContainer({
    required String startupCommand,
    required String image,
    @Deprecated('Use status instead') required bool installed,
    required JsonMap environment,
  }) = _ApplicationServerContainer;

  factory ApplicationServerContainer.fromJson(JsonMap json) =>
      _$ApplicationServerContainerFromJson(json);
}

@freezed
class ApplicationServerRelationships with _$ApplicationServerRelationships {
  const ApplicationServerRelationships._();
  // https://github.com/pterodactyl/panel/blob/1.0-develop/app/Transformers/Api/Application/ServerTransformer.php
  const factory ApplicationServerRelationships(
    Fractal<ApplicationUser>? user,
    // todo: add all relationships
  ) = _ApplicationServerRelationships;

  factory ApplicationServerRelationships.fromJson(JsonMap json) =>
      _$ApplicationServerRelationshipsFromJson(json);
}
