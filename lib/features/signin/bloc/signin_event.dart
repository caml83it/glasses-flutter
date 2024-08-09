part of 'signin_bloc.dart';

sealed class SignInEvent {}

class SignInInitialEvent extends SignInEvent {}

class EmailChangedEvent extends SignInEvent {
  final String value;
  EmailChangedEvent({required this.value});
}

class PasswordChangedEvent extends SignInEvent {
  final String value;
  PasswordChangedEvent({required this.value});
}

class LoginRequestEvent extends SignInEvent {}
