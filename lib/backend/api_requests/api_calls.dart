import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserByUIDCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get User by UID',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/users/get',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPostsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Posts',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSchedulesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Schedules',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/schedule',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserProfileCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? firstName = '',
    String? middleName = '',
    String? lastName = '',
    String? gender = '',
    String? birthdate = '',
    String? image = '',
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid",
  "first_name": "$firstName",
  "middle_name": "$middleName",
  "last_name": "$lastName",
  "gender": "$gender",
  "phone_number": "$phoneNumber",
  "birthdate": "$birthdate",
  "image": "$image"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Profile',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/users/update',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewPostCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? title = '',
    String? content = '',
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "title": "$title",
  "content": "$content",
  "image": "$image"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create New Post',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/posts/new',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllTeamsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Teams',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewTeamCall {
  static Future<ApiCallResponse> call({
    int? sportsId,
    String? userId = '',
    String? name = '',
    String? description = '',
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "sport_id": $sportsId,
  "user_id": "$userId",
  "name": "$name",
  "description": "$description",
  "image": "$image"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a new team',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSportsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Sports',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/sports/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOneTeamCall {
  static Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get  One Team',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/$teamId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class GetPendingTasksCall {
  static Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Pending Tasks',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/tasks/$teamId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class CreateTasksCall {
  static Future<ApiCallResponse> call({
    int? teamId,
    String? taskName = '',
    String? taskDescription = '',
    String? taskDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "task_name": "$taskName",
  "task_description": "$taskDescription",
  "task_date": "$taskDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Tasks',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/tasks/$teamId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class JoinATeamCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Join a Team',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/$teamId/join',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LeaveATeamCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Leave a Team',
      apiUrl: 'https://py-flask-vola.onrender.com/api/v1/teams/$teamId/leave',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectAPlayerCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reject a Player',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/$teamId/reject',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class MarkAsCompleteCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? taskId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mark as Complete',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/tasks/$taskId/complete',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AcceptAPlayerCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Accept a Player ',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/$teamId/accept',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewScheduleCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
    String? description = '',
    String? opponent = '',
    String? title = '',
    String? date = '',
    String? location = '',
  }) async {
    final ffApiRequestBody = '''
{
  "description": "$description",
  "location": "$location",
  "title": "$title",
  "opponent": "$opponent",
  "date": "$date",
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a new schedule',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/schedule/$teamId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPendingTasksCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Pending Tasks',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/tasks/athlete/$teamId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPendingCall {
  static Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Pending',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/$teamId/pending',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPercentageCall {
  static Future<ApiCallResponse> call({
    int? teamId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Percentage',
      apiUrl:
          'https://py-flask-vola.onrender.com/api/v1/teams/tasks/$teamId/progress',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
