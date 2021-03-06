part of 'login_form_bloc.dart';

abstract class LoginFormEvent {}

class LoginInitEvent extends LoginFormEvent {}

class LoginEmailChangeEvent extends LoginFormEvent {
  final String email;
  LoginEmailChangeEvent({required this.email});
}

class LoginPasswordChangeEvent extends LoginFormEvent {
  final String password;
  LoginPasswordChangeEvent({required this.password});
}

class LoginSubmitedEvent extends LoginFormEvent {}

class ToggleLoginVisibility extends LoginFormEvent {}
