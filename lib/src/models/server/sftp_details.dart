import 'package:json_annotation/json_annotation.dart';
import 'package:dartactyl/models.dart';

part 'sftp_details.g.dart';

@JsonSerializable()
class SftpDetails {
  String ip;
  int port;
  SftpDetails({
    required this.ip,
    required this.port,
  });
  factory SftpDetails.fromJson(JsonMap json) => _$SftpDetailsFromJson(json);
  JsonMap toJson() => _$SftpDetailsToJson(this);
}
