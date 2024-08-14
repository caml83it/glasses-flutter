mixin SignInScreenMixin {
  Future<void> onSignInWithCredentials();
  Future<void> onSignInWithFacebook();
  Future<void> onSignInWithGoogle();

  void onSignUpNowPressed();
  void onForgotPasswordPressed();
}
