import 'package:dio/dio.dart';
import 'package:glasses/data/datasources/remote/api_client.dart';
import 'package:glasses/data/datasources/remote/api_endpoints.dart';
import 'package:glasses/data/models/user_model.dart';
import 'package:glasses/data/requests/user_credentials.dart';
import 'package:glasses/data/responses/api_auth_response.dart';
import 'package:glasses/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final ApiClient client;

  AuthRepositoryImpl({required this.client});

  @override
  Future<ApiAuthResponse<UserModel>> login(UserCredentials credentials) async {
    Response response = await client.post(
      ApiEndpoints.login,
      data: credentials.toJson(),
    );
    return ApiAuthResponse.fromJson(
      response.data,
      (json) => UserModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
