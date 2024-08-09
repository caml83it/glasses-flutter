import 'package:glasses/core/usecase.dart';
import 'package:glasses/data/requests/user_credentials.dart';
import 'package:glasses/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCaseParams<void, UserCredentials> {
  final AuthRepository repository;
  LoginUseCase({required this.repository});

  late final UserCredentials credentials;
  @override
  Future<void> exec() async {
    repository.login(credentials);
  }

  @override
  void setParams(UserCredentials params) {
    credentials = params;
  }
}
