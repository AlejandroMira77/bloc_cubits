part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {

  final FormStatus formStatus;
  final Username username;
  final Email email;
  final Password password;
  final bool isvalid;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isvalid = false
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    Username? username,
    Email? email,
    Password? password,
    bool? isvalid
  }) => RegisterFormState(
    formStatus: formStatus ?? this.formStatus,
    username: username ?? this.username,
    email: email ?? this.email,
    password: password ?? this.password,
    isvalid: isvalid ?? this.isvalid,
  );

  @override
  List<Object> get props => [formStatus, username, email, password, isvalid];
}
