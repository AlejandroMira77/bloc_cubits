part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {

  final FormStatus formStatus;
  final Username username;
  final String email;
  final String password;
  final bool isvalid;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.username = const Username.pure(),
    this.email = '',
    this.password = '',
    this.isvalid = false
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    Username? username,
    String? email,
    String? password,
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
