import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/core/base_state.dart';
import 'package:glasses/shared/constants/constants.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initialize()) {
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
  ) {}
}
