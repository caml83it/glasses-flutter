import 'package:glasses/domain/repositories/storage_repository.dart';

class StorageRepositoryImpl extends StorageRepository {
  @override
  Future<String> getAccessToken() {
    throw UnimplementedError();
  }

  @override
  Future<String> getRefreshToken() {
    throw UnimplementedError();
  }
}
