class BaseBlocState {
  final bool isInitialLoading;
  final String? errorMessage;

  BaseBlocState({
    this.isInitialLoading = false,
    this.errorMessage,
  });
}
