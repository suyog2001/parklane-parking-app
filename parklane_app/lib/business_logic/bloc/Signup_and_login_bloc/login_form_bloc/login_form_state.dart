part of 'login_form_bloc.dart';

class LoginFormState extends Equatable {
  final String password;
  bool get isValidPassword => password.isNotEmpty;
  final String email;
  bool get isValidEmail => EmailValidator.validate(email);
  final bool isvisible;
  final FormSubmissionStatus formStatus;
  const LoginFormState(
      {this.password = '',
      this.email = '',
      this.isvisible = true,
      this.formStatus = const InitialFormStatus()});

  LoginFormState copyWith(
      {String? username,
      String? password,
      String? email,
      bool? isvisible,
      FormSubmissionStatus? formStatus}) {
    return LoginFormState(
        password: password ?? this.password,
        email: email ?? this.email,
        isvisible: isvisible ?? this.isvisible,
        formStatus: formStatus ?? this.formStatus);
  }

  @override
  List<Object?> get props => [email, password, formStatus, isvisible];
}
