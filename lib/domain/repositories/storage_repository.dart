abstract class StorageRepository {
  Future<String> getAccessToken();
  Future<String> getRefreshToken();
}
