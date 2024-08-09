abstract class UseCase<T> {
  Future<T> exec();
}

abstract class UseCaseParams<T, P> extends UseCase<T> {
  void setParams(P params);
}
