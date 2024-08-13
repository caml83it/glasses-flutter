import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/core/base_state.dart';
import 'package:glasses/data/requests/user_credentials.dart';
import 'package:glasses/domain/usecases/auth_usecases.dart';
import 'package:glasses/shared/constants/constants.dart';
import 'package:glasses/shared/utils/string_utils.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final LoginUseCase loginUseCase;

  SignInBloc({
    required this.loginUseCase,
  }) : super(SignInState.initialize()) {
    on<SignInInitialEvent>(_onInitialEvent);
    on<EmailChangedEvent>(_onEmailChanged);
    on<PasswordChangedEvent>(_onPasswordChanged);
    on<LoginRequestEvent>(_onLoginRequest);
  }

  FutureOr<void> _onInitialEvent(
    SignInInitialEvent event,
    Emitter<SignInState> emit,
  ) {}

  FutureOr<void> _onEmailChanged(
    EmailChangedEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(email: event.value));
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChangedEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(password: event.value));
  }

  FutureOr<void> _onLoginRequest(
    LoginRequestEvent event,
    Emitter<SignInState> emit,
  ) {
    String email = state.email;
    String password = state.password;
    if (email.isValidEmail && password.isValidPassword) {
      loginUseCase.setParams(UserCredentials(email: email, password: password));
      loginUseCase.exec();
    }
  }
}
