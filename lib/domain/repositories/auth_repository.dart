import 'package:glasses/data/models/user_model.dart';
import 'package:glasses/data/requests/user_credentials.dart';
import 'package:glasses/data/responses/api_auth_response.dart';

abstract class AuthRepository {
  Future<ApiAuthResponse<UserModel>> login(UserCredentials credentials);
}
