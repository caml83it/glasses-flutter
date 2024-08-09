part of 'signin_bloc.dart';

class SignInState extends BaseBlocState {
  final String email;
  final String password;

  SignInState({
    required this.email,
    required this.password,
    super.isInitialLoading,
    super.errorMessage,
  });

  factory SignInState.initialize() {
    return SignInState(
      email: Constants.kEmpty,
      password: Constants.kEmpty,
      isInitialLoading: true,
      errorMessage: Constants.kEmpty,
    );
  }

  SignInState load() {
    return copyWith(isInitialLoading: true);
  }

  SignInState unload() {
    return copyWith(isInitialLoading: false);
  }

  SignInState copyWith({
    String? email,
    String? password,
    bool? isInitialLoading,
    String? errorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
