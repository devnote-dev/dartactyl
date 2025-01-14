import 'dart:async';
import 'dart:io';

import 'package:dartactyl/dartactyl.dart';
import 'package:dartactyl/models.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:dio/dio.dart' as dioHeaders show Headers;
import 'package:retrofit/retrofit.dart';

import 'application.dart';

part 'client_extentions.dart';
part 'generated/client.freezed.dart';
part 'generated/client.g.dart';
part 'mock_client.dart';
part 'translation_client.dart';

@RestApi()
abstract class DeprecatedPteroClient {
  const DeprecatedPteroClient._();
  factory DeprecatedPteroClient(Dio dio, {String? baseUrl}) =
      _DeprecatedPteroClient._;

  /// Delete an [SshKey] on your account. (1.8.0-1.8.1)
  @DELETE('/api/client/account/ssh-keys/{fingerprint}')
  Future<void> deleteSshKey1_8({
    @Path() required String fingerprint,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });
}

/// Pterodactyl API Client
@RestApi()
abstract class PteroClient {
  const PteroClient._();
  factory PteroClient(Dio dio, {String? baseUrl}) = _PteroClient._;

  @Deprecated('Use RemoveNullResourcesInterceptor() instead.')
  static final removeNullResourcesInterceptor =
      RemoveNullResourcesInterceptor();

  static final defaultInterceptors = [
    HandleErrorInterceptor(),
    RemoveNullResourcesInterceptor(),
  ];

  /// Set up a Pterodactyl API Client in one go!
  /// [baseUrl] is the base URL of the Pterodactyl server.
  /// [key] is the API key of the Pterodactyl account.
  /// leave [apiKey] blank if you'd rather use cookies with user/pass.
  factory PteroClient.generate({
    required String url,
    String? key,
    Dio? dio,
    String userAgent = 'Dartactyl/v1',
    bool addDefaultInterceptors = true,
  }) {
    dio ??= Dio();

    if (key != null) {
      // use key
      dio.options.headers[HttpHeaders.authorizationHeader] = "Bearer $key";
    }
    dio.options
      ..headers[HttpHeaders.userAgentHeader] = userAgent
      ..headers[HttpHeaders.acceptHeader] = 'application/json'
      ..headers[HttpHeaders.contentTypeHeader] = 'application/json'
      ..baseUrl = url;

    if (addDefaultInterceptors) dio.interceptors.addAll(defaultInterceptors);

    return PteroClient(dio);
  }

  /// Creates an instance of the [PteroClient] class.
  ///
  /// This can be used to test the client without actually connecting to a server.
  ///
  /// Uses mockapi.ptero.sh as the base URL, which redirects to the pterodactyl.stoplight.io mock server.
  ///
  /// Does not work with /auth endpoints - only /api/client
  factory PteroClient.mockApi([Dio? dio]) => PteroClient.generate(
        url: 'https://mockapi.ptero.sh',
        dio: dio,
        key: 'mock-api-key',
      );

  Dio get _dio;
  Dio get dio => _dio;
  String? get baseUrl;
  String get url => baseUrl ?? dio.options.baseUrl;

  @Deprecated('Update your panel! These endpoints are deprecated!')
  DeprecatedPteroClient get old => DeprecatedPteroClient(dio, baseUrl: baseUrl);

  @experimental
  PteroTranslationsClient get translations =>
      PteroTranslationsClient(dio, baseUrl: baseUrl);

  @experimental
  PteroApplication get application => PteroApplication(dio, baseUrl: baseUrl);

  /// Alias of listVariables
  Future<FractalListMeta<EggVariable, StartupMeta>> getStartup({
    required String serverId,
    CancelToken? cancelToken,
    ProgressCallback? onProgress,
  }) =>
      listVariables(
        serverId: serverId,
        cancelToken: cancelToken,
        onProgress: onProgress,
      );

  Future<Map<String, String>> listDockerImages({
    required String serverId,
    CancelToken? cancelToken,
    ProgressCallback? onProgress,
  }) async =>
      (await getStartup(
        serverId: serverId,
        cancelToken: cancelToken,
        onProgress: onProgress,
      ))
          .dockerImages;

  // /// Login to Pterodactyl using username and password.
  // ///
  // /// PUTS YOU INTO COOKIE MODE!!!
  // ///
  // /// [xsrfHeader] is the XSRF token
  // @POST('/auth/login')
  // Future<void> _login(
  //   @Body() PteroLoginRequest credentials,
  //   @Header("X-XSRF-TOKEN") String xsrfHeader,
  // );

  // /// Logout of Pterodactyl, ending your session.
  // ///
  // /// This will automatically remove your api token if
  // /// you did not disable the option in the client.
  // ///
  // /// You will need to add a cookie manager interceptor to make use of this
  // ///
  // /// Not fully implemented.
  // @experimental
  // @GET('/auth/logout')
  // Future<void> logout();

  /// Get a list of servers.
  ///
  /// You can filter the results using:
  ///
  /// [filter]; filters by all (uuid, name, externalId, ip:port, :port, ip)
  ///
  /// [filterByUuid]; filters by uuid
  ///
  /// [filterByName]; filters by name
  ///
  /// [filterByExternalId]; filters by external id
  ///
  /// !!! ONLY USE ONE FILTER !!!
  ///
  /// [page]; page number
  ///
  /// [perPage]; number of results per page
  ///
  /// You can also limit what servers are returned by
  /// providing a [GetServersQueryType] to [type] (defualt is 'member')
  ///
  /// Available [Includes]; 'egg', 'subusers'
  @GET('/api/client')
  Future<FractalListMeta<Server, PaginatedMeta>> listServers({
    // Pagination
    @Query('page') int? page = 1,
    @Query('per_page') int? perPage = 50,

    /// [include]; egg, subusers
    @Query('include') ServerIncludes? include,

    // Filters
    @Query('filter[*]') String? filter,
    @Query('filter[uuid]') String? filterByUuid,
    @Query('filter[name]') String? filterByName,
    @Query('filter[external_id]') String? filterByExternalId,
    @Query('filter[description]') String? filterByDescription,
    // What servers to return by access type
    @Query('type') GetServersQueryType? type = GetServersQueryType.member,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get system permissions
  @GET('/api/client/permissions')
  Future<Fractal<SystemPermissions>> getSystemPermissions({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /*       Account       */

  /// Get account information.
  @GET('/api/client/account')
  Future<Fractal<Account>> getAccountInfo({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get two factor authentication image.
  @GET('/api/client/account/two-factor')
  Future<Fractal<TwoFactorImage>> getTwoFactor({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Enable two factor authentication.
  @POST('/api/client/account/two-factor')
  Future<Fractal<RecoveryTokens>> enableTwoFactor(
    @Body() TwoFactorCode code, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Disable two factor authentication.
  @DELETE('/api/client/account/two-factor')
  Future<void> disableTwoFactor(
    @Body() DisableTwoFactor data, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update your [Account] account email address.
  @PUT('/api/client/account/email')
  Future<void> updateEmail(
    @Body() UpdateEmail data, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update your [Account] account password.
  @PUT('/api/client/account/password')
  Future<void> updatePassword(
    @Body() UpdatePassword data, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  @GET('/api/client/account/activity')
  Future<FractalListMeta<ActivityLog, PaginatedMeta>> getAccountActivity({
    @Query('include') ActivityLogsIncludes? include,
    // Pagination
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    // Filters
    // @Query('filter[*]') String? filter,
    // @Query('filter[ip]') String? filterByIp,
    @Query('filter[event]') String? filterByEvent,
    // Sort
    @Query('sort') ActivityLogSort? sort,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get all current [ApiKey]s on your account.
  /// Keys are shortened to the first x characters.
  @GET('/api/client/account/api-keys')
  Future<FractalList<ApiKey>> listApiKeys({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a new [ApiKey] on your account.
  /// This is the only time you will ever get the full key.
  @POST('/api/client/account/api-keys')
  Future<FractalMeta<ApiKey, ApiKeyMeta>> createApiKey(
    @Body() CreateApiKey data, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete an [ApiKey] on your account.
  @DELETE('/api/client/account/api-keys/{apiKeyId}')
  Future<void> deleteApiKey({
    @Path() required String apiKeyId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// List all [SshKey]s on your account.
  @GET('/api/client/account/ssh-keys')
  Future<FractalList<SshKey>> listSshKeys({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a new [SshKey] on your account.
  @POST('/api/client/account/ssh-keys')
  Future<Fractal<SshKey>> createSshKey(
    @Body() CreateSshKey data, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete an [SshKey] on your account. (1.9+)
  @POST('/api/client/account/ssh-keys/remove')
  Future<void> deleteSshKey(
    @Body() DeleteSSHKey body, {
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // '/api/client/servers/{server}'

  /// Get a server's information.
  ///
  /// Available [Includes]; 'egg', 'subusers'
  @GET('/api/client/servers/{serverId}')
  Future<FractalMeta<Server, ServerMeta>> getServerDetails({
    @Path() required String serverId,
    @Query('include') ServerIncludes? include,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get the [Server]'s [WebsocketDetails].
  @GET('/api/client/servers/{serverId}/websocket')
  Future<PteroData<WebsocketDetails>> getServerWebsocket({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get the [Server]'s current [Stats].
  @GET('/api/client/servers/{serverId}/resources')
  Future<Fractal<Stats>> getServerResources({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  @GET('/api/client/servers/{serverId}/activity')
  Future<FractalListMeta<ActivityLog, PaginatedMeta>> getServerActivity({
    @Path() required String serverId,
    @Query('include') ActivityLogsIncludes? include,
    // Pagination
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    // Filters
    // @Query('filter[*]') String? filter,
    @Query('filter[ip]') String? filterByIp,
    @Query('filter[event]') String? filterByEvent,
    // Sort
    @Query('sort') ActivityLogSort? sort,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Send a command to the [Server].
  @POST('/api/client/servers/{serverId}/command')
  Future<void> sendServerCommand(
    @Body() SendServerCommand data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// send a Power [Signal] to the [Server].
  @POST('/api/client/servers/{serverId}/power')
  Future<void> sendServerPowerAction(
    @Body() Signal signal, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Databases

  /// List all databases that are available to the server
  ///
  /// Available [Includes]; 'password' (include the database user password)
  @GET('/api/client/servers/{serverId}/databases')
  Future<FractalResponseListMeta<ServerDatabase, PaginatedMeta>>
      listServerDatabases({
    @Path() required String serverId,
    @Query('include') ServerDatabasesIncludes? include,
    // pagination
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    // filters
    // ??
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a new database on the server
  @POST('/api/client/servers/{serverId}/databases')
  Future<Fractal<ServerDatabase>> createServerDatabase(
    @Body() CreateServerDatabase data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete a [ServerDatabase]
  @DELETE('/api/client/servers/{serverId}/databases/{databaseId}')
  Future<void> deleteDatabase({
    @Path() required String serverId,
    @Path() required String databaseId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// TODO: on [rotateDatabasePassword]
  @POST('/api/client/servers/{serverId}/databases/{databaseId}/rotate-password')
  Future<Fractal<ServerDatabase>> rotateDatabasePassword({
    @Path() required String serverId,
    @Path() required String databaseId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Files

  /// List all files on the [Server]
  ///
  /// [directory]; path to list files from
  @GET('/api/client/servers/{serverId}/files/list')
  Future<FractalList<FileObject>> listFiles({
    @Path() required String serverId,
    @Query('directory', encoded: true) required String directory,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get a [file]'s contents from the [Server]
  ///
  /// [file]; path to the desired file
  @GET('/api/client/servers/{serverId}/files/contents') //TODO
  Future<String?> getFileContents({
    @Path() required String serverId,
    @Query('file', encoded: true) required String file,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Download a [file] from the [Server]
  ///
  /// [file]; path to the desired file
  @GET('/api/client/servers/{serverId}/files/download')
  Future<Fractal<SignedUrl>> downloadFile({
    @Path() required String serverId,
    @Query('file', encoded: true) required String file,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Rename a file on the [Server]
  @PUT('/api/client/servers/{serverId}/files/rename')
  Future<void> renameFile(
    @Body() FileBodyListFromTo rename, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Make a copy of a file on the [Server]
  @POST('/api/client/servers/{serverId}/files/copy')
  Future<void> makeFileCopy(
    @Body() MakeFileCopy data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Write a [file] to the [Server]
  ///
  /// Use this to update or create a file on the [Server].
  ///
  /// [file]; url encoded path to the desired file
  @POST('/api/client/servers/{serverId}/files/write')
  @Headers(<String, dynamic>{"Content-Type": 'text/plain'})
  Future<void> writeFile(
    @Body() String rawContents, {
    @Path() required String serverId,
    @Query('file', encoded: true) required String file,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Compress a file into an archive (eg. zip) on the [Server]
  @POST('/api/client/servers/{serverId}/files/compress')
  Future<Fractal<FileObject>> compressFile(
    @Body() FileBodyListString data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Decompress an archive (eg. zip) on the [Server]
  @POST('/api/client/servers/{serverId}/files/decompress')
  Future<void> decompressFile(
    @Body() FileBody data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete one or more files on the [Server]
  @POST('/api/client/servers/{serverId}/files/delete')
  Future<void> deleteFiles(
    @Body() FileBodyListString data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Creates the specified folder in the specified directory
  @POST('/api/client/servers/{serverId}/files/create-folder')
  Future<void> createFolder(
    @Body() FolderBody data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Changes the permissions of a file or folder on the [Server]
  @POST('/api/client/servers/{serverId}/files/chmod')
  Future<void> chmodFile(
    @Body() ChmodFileBody data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Download a file from a remote url to the [Server] directly
  @POST('/api/client/servers/{serverId}/files/pull')
  Future<void> pullFile(
    @Body() PullFileBody data, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Returns a [SignedUrl] used to upload files to the [Server] using POST
  @GET('/api/client/servers/{serverId}/files/upload')
  Future<Fractal<SignedUrl>> getFileUploadUrl({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Schedules
  /// List all schedules that the [Server] has
  @GET('/api/client/servers/{serverId}/schedules')
  Future<FractalList<ServerSchedule>> listSchedules({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a [ServerSchedule] on the [Server]
  @POST('/api/client/servers/{serverId}/schedules')
  Future<Fractal<ServerSchedule>> createSchedule(
    @Body() RequestSchedule scheduleData, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get a [ServerSchedule]'s details from the [Server]
  @GET('/api/client/servers/{serverId}/schedules/{scheduleId}')
  Future<Fractal<ServerSchedule>> getScheduleDetails({
    @Path() required String serverId,
    @Path() required int scheduleId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update a [ServerSchedule] on the [Server]
  @POST('/api/client/servers/{serverId}/schedules/{scheduleId}')
  Future<Fractal<ServerSchedule>> updateSchedule(
    @Body() RequestSchedule scheduleData, {
    @Path() required String serverId,
    @Path() required int scheduleId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete a [ServerSchedule] from the [Server]
  @DELETE('/api/client/servers/{serverId}/schedules/{scheduleId}')
  Future<void> deleteSchedule({
    @Path() required String serverId,
    @Path() required int scheduleId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a scheduled [Task] on a [ServerSchedule]
  @POST('/api/client/servers/{serverId}/schedules/{scheduleId}/tasks')
  Future<Fractal<ScheduleTask>> createTask(
    @Body() Task taskData, {
    @Path() required String serverId,
    @Path() required int scheduleId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update a scheduled [Task] on a [ServerSchedule]
  @POST('/api/client/servers/{serverId}/schedules/{scheduleId}/tasks/{taskId}')
  Future<Fractal<ScheduleTask>> updateTask(
    @Body() Task taskData, {
    @Path() required String serverId,
    @Path() required int scheduleId,
    @Path() required int taskId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete a scheduled [Task] on a [ServerSchedule]
  @DELETE(
      '/api/client/servers/{serverId}/schedules/{scheduleId}/tasks/{taskId}')
  Future<void> deleteTask({
    @Path() required String serverId,
    @Path() required int scheduleId,
    @Path() required int taskId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Network
  /// List all allocations that the [Server] has
  @GET('/api/client/servers/{serverId}/network')
  Future<FractalList<Allocation>> listAllocations({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Automatically assign an allocation on the [Server]
  @POST('/api/client/servers/{serverId}/network')
  Future<Fractal<Allocation>> autoAssignAllocation({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Set the allocation note for an [Allocation] on the [Server]
  @POST('/api/client/servers/{serverId}/network/{allocationId}')
  Future<Fractal<Allocation>> setAllocationNote(
    @Body() AllocationNote note, {
    @Path() required String serverId,
    @Path() required int allocationId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Set an [Allocation] as the primary allocation on [Server]
  @POST('/api/client/servers/{serverId}/network/{allocationId}/primary')
  Future<Fractal<Allocation>> setPrimaryAllocation({
    @Path() required String serverId,
    @Path() required int allocationId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Unassign an [Allocation] from [Server]
  @DELETE('/api/client/servers/{serverId}/network/{allocationId}')
  Future<Fractal<Allocation>> unassignAllocation({
    @Path() required String serverId,
    @Path() required int allocationId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /*                                  Users                                  */

  /// List all [ServerSubuser]s on the [Server]
  @GET('/api/client/servers/{serverId}/users')
  Future<FractalList<ServerSubuser>> listSubusers({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create [ServerSubuser] on the [Server]
  @POST('/api/client/servers/{serverId}/users')
  Future<Fractal<ServerSubuser>> createSubuser(
    @Body() Subuser subuserData, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get a [ServerSubuser]'s details on the [Server]
  @GET('/api/client/servers/{serverId}/users/{subuserId}')
  Future<Fractal<ServerSubuser>> getSubuserDetails({
    @Path() required String serverId,
    @Path() required String subuserId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update a [ServerSubuser] on the [Server]
  @POST('/api/client/servers/{serverId}/users/{subuserId}')
  Future<Fractal<ServerSubuser>> updateSubuser(
    @Body() SubuserPermissions subuserData, {
    @Path() required String serverId,
    @Path() required String subuserId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete a [ServerSubuser] from the [Server]
  @DELETE('/api/client/servers/{serverId}/users/{subuserId}')
  Future<void> deleteSubuser({
    @Path() required String serverId,
    @Path() required String subuserId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Backups

  /// List all backups on the [Server]
  @GET('/api/client/servers/{serverId}/backups')
  Future<FractalResponseListMeta<Backup, PaginatedBackupsMeta>> listBackups({
    @Path() required String serverId,
    // pagination
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Create a backup on the [Server]
  @POST('/api/client/servers/{serverId}/backups')
  Future<Fractal<Backup>> createBackup(
    @Body() CreateBackup backupData, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Get information about a [Backup] from the [Server]
  @GET('/api/client/servers/{serverId}/backups/{backupId}')
  Future<Fractal<Backup>> getBackupDetails({
    @Path() required String serverId,
    @Path() required String backupId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Lock a [Backup] to protect it from automated or accedental deletions
  /// If the [Backup] is already locked, this will unlock it instead
  @POST('/api/client/servers/{serverId}/backups/{backupId}/lock')
  Future<Fractal<Backup>> toggleBackupLock({
    @Path() required String serverId,
    @Path() required String backupId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Generate download url for a [Backup] from  the [Server]
  @GET('/api/client/servers/{serverId}/backups/{backupId}/download')
  Future<Fractal<SignedUrl>> downloadBackup({
    @Path() required String serverId,
    @Path() required String backupId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Delete a [Backup] from the [Server]
  @DELETE('/api/client/servers/{serverId}/backups/{backupId}')
  Future<void> deleteBackup({
    @Path() required String serverId,
    @Path() required String backupId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Restore a [Backup] to the [Server]
  @POST('/api/client/servers/{serverId}/backups/{backupId}/restore')
  Future<void> restoreBackup(
    @Body() RestoreBackup body, {
    @Path() required String serverId,
    @Path() required String backupId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Startup
  /// Get all [Server] startup variables
  /// Includes egg docker images, startup script, and the raw startup script
  @GET('/api/client/servers/{serverId}/startup')
  Future<FractalListMeta<EggVariable, StartupMeta>> listVariables({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update the [Server] startup variable with the contents of [variable]
  @PUT('/api/client/servers/{serverId}/startup/variable')
  Future<Fractal<EggVariable>> updateVariable(
    @Body() KeyValue variable, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  // Settings
  /// [Rename] the [Server]
  @POST('/api/client/servers/{serverId}/settings/rename')
  Future<void> renameServer(
    @Body() Rename rename, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Reinstall the [Server]
  @POST('/api/client/servers/{serverId}/settings/reinstall')
  Future<void> reinstallServer({
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });

  /// Update the [Server] docker image to [dockerImage]
  @PUT('/api/client/servers/{serverId}/settings/docker-image')
  Future<void> updateDockerImage(
    @Body() UpdateImage dockerImage, {
    @Path() required String serverId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onProgress,
  });
}
